import { getSetting, chooseAddress, openSettion } from "../../request/asyncWX.js"
import regeneratorRuntime from "../../lib/runtime/runtime"
// pages/cart/index.js
Page({

    /**
     * 页面的初始数据
     */
    data: {
        Address: {},
        goods: [],
        totalPrice: 0,
        totalNum: 0,
        allCheckbox: false
    },

    /**
     * 生命周期函数--监听页面加载
     */
    onLoad: function(options) {
        // 1、把缓存的数据提出来，重新更新一下 goods
        let goods = wx.getStorageSync('ShoppingData') || []

        // 拿值
        let [allCheckbox, totalNum, totalPrice] = this.ifNum(goods)

        // 2、把缓存的数据拿出来赋到页面数据里面
        this.setData({
            goods,
            totalNum,
            totalPrice,
            allCheckbox
        })

    },
    onShow: function() {

        let Address = wx.getStorageSync('Address');

        this.setData({
            Address
        })

        // 判断是不是刚才支付之后跳转过来的，如果是的话要把支付的商品删除掉
        let payCondition = wx.getStorageSync('payCondition')

        if (payCondition) {
            // 当支付成功之后
            wx.setStorageSync('payCondition', false)
            let { goods } = this.data

            goods = goods.filter(item => !(item.goods_checked))

            wx.setStorageSync('ShoppingData', goods)

            this.setData({
                goods
            })
        }

    },

    /**
     * 获取地址
     */
    async address(e) {
        /**
         * 1、authSetting["scope.address"] 的值确定为 true 拒绝为 false 没点击时为 undefined
         * 2、当用户拒绝过之后就需要重新拉请求
         */
        const res1 = await getSetting()
        const scopeAddress = res1.authSetting["scope.address"]

        if (scopeAddress === false) {
            wx.openSetting({
                success: (result) => {}
            });

        }

        const res2 = await chooseAddress()

        if (res2) {
            wx.setStorageSync('Address', res2)
        }
    },

    /**
     * 点击 添加/减少
     */
    changeNum(e) {

        // 获取下标 和 要加的值
        let num = e.currentTarget.dataset.num - 0
        let index = e.currentTarget.dataset.index

        // 获取页面数据
        let { goods } = this.data

        // 开始操作
        if (goods[index].goods_num) {

            goods[index].goods_num += num

        } else if (goods[index].goods_num === 0 && num === 1) {

            goods[index].goods_num += num

        } else {
            wx.showToast({
                title: '不可以再减了,已经没有了',
                icon: 'none',
                mask: true
            })
        }

        // 拿值
        let [allCheckbox, totalNum, totalPrice] = this.ifNum(goods)

        // 更新页面数据
        this.setData({
            goods,
            totalNum,
            totalPrice,
            allCheckbox
        })

    },

    /**
     * 复选框事件
     */
    itemsChange(e) {

        // 拿到页面数据
        let { goods } = this.data

        // 获取小标和 flag，并把 flag 取反
        let { index } = e.target.dataset
        let { checked } = e.target.dataset



        //重新赋值
        goods.forEach((item, i) => {
            if (i === index) {
                if (item.goods_checked) {
                    item.goods_num = 0
                    item.goods_checked = false
                } else {
                    item.goods_num = 1
                    item.goods_checked = true
                }
            }
        })

        let [allCheckbox, totalNum, totalPrice] = this.ifNum(goods)

        this.setData({
            goods,
            allCheckbox,
            totalPrice,
            totalNum
        })


    },


    /**
     * 清空购物车
     */
    removeAll() {
        let goods = []
        this.setData({
            goods,
            totalPrice: 0,
            totalNum: 0,
            allCheckbox: false
        })
        wx.setStorageSync('ShoppingData', goods);
    },


    /**
     * 选中删除商品
     */
    checkedRemove(e) {

        let { goods } = this.data

        let Goods = goods.filter(v => v.goods_checked)

        goods = goods.filter(v => (!v.goods_checked))




        if (Goods.length) {
            this.setData({
                goods,
                totalPrice: 0,
                totalNum: 0,
                allCheckbox: false
            })

            wx.setStorageSync('ShoppingData', goods);
        } else {
            wx.showToast({
                title: '你还未选中商品',
                icon: 'none'
            })
        }

    },


    /**
     * 全选框事件
     */
    allCheckbox(e) {

        // 把页面的数据提出来
        let { goods } = this.data

        // 对全选框的 checked 取反
        let flag = !(this.data.allCheckbox)

        // 当全选被选中时 goods 里面的所有 goods_checked 更改为 true
        goods.forEach(item => {
            if (flag) {
                item.goods_num = 1
                item.goods_checked = true
            } else {
                item.goods_num = 0
                item.goods_checked = false
            }
        })

        // 数量和价格
        let [allCheckbox, totalNum, totalPrice] = this.ifNum(goods)

        // 更新数据
        this.setData({
            goods,
            allCheckbox,
            totalPrice,
            totalNum
        })

    },
    /**
     * 结算按钮
     */
    btnClick: function(e) {


        // 拿到数据
        let { goods } = this.data


        goods = goods.filter(v => v.goods_checked)

        wx.setStorageSync('payData', goods);

        if (goods.length) {
            // 数据不为空时

            if (this.data.Address.errMsg) {
                // 跳转页面
                wx.navigateTo({
                    url: '/pages/pay/index'
                })
            } else {
                wx.showToast({
                    title: '您还未选收货地址',
                    icon: 'none'
                })
            }
        } else {
            // 数据为空时
            wx.showToast({
                title: '您还未选中商品',
                icon: 'none'
            })
        }

    },

    ifNum(goods) {
        // 用来对全选框操作的变量
        let num = 0
        let allCheckbox = true
        let totalNum = 1
        let totalPrice = 0


        // 创建判断条件
        goods.forEach(item => {

            if (item.goods_num === 0) {
                item.goods_checked = false
            } else {
                item.goods_checked = true
            }

            if (item.goods_checked) {
                num++
                totalPrice += item.goods_num * item.goods_price
            }
        })

        // 在这些进行全选框的判断
        if (num === goods.length) {
            allCheckbox = true
            totalNum = goods.length
        } else {
            allCheckbox = false
            totalNum = num
        }

        return [allCheckbox, totalNum, totalPrice]
    },
})