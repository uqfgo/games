// pages/pay/index.js
import { getSetting, chooseAddress, openSettion } from "../../request/asyncWX.js"
import regeneratorRuntime from "../../lib/runtime/runtime"


Page({

    /**
     * 页面的初始数据
     */
    data: {
        goods: [],
        totalPrice: 0,
        totalNum: 0
    },

    /**
     * 生命周期函数--监听页面加载
     */
    onLoad: function(options) {

        // 拿到商品和地址数据
        let goods = wx.getStorageSync('payData')
        let Address = wx.getStorageSync('Address')

        // 算价格
        let totalNum = goods.length
        let totalPrice = 0

        // 拿价格
        goods.forEach(item => {
            totalPrice += item.goods_num * item.goods_price
        })

        // 判断有没有地址
        if (!Address) {
            wx.showToast({
                title: '您还没有收货地址,快去上面填写吧',
                icon: 'none',
                duration: 2000
            })
        }

        // 放到页面数据中渲染
        this.setData({
            goods,
            Address,
            totalNum,
            totalPrice
        })


    },
    /**
     * 结算按钮
     */
    btnClick: function() {

        if (this.data.Address) {

            // 支付的时候要判断一下有没有登陆
            // 获取登陆状态
            const loginCondition = wx.getStorageSync('loginCondition')

            if (!loginCondition) {
                //还没登陆时,跳转到登陆页面
                wx.navigateTo({
                    url: '/pages/login/index'
                })
            } else {
                wx.navigateBack({
                    delta: 1
                })

                wx.setStorageSync('payCondition', true)

                wx.showToast({
                    title: '支付成功',
                    icon: 'success',
                    duration: 2000,
                    mask: true
                })
            }


        } else {
            wx.showToast({
                title: '请您填写收货地址',
                icon: 'none'
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

        this.setData({
            Address: res2
        })
    },

    /**
     * 生命周期函数--监听页面初次渲染完成
     */
    onReady: function() {

    },

    /**
     * 生命周期函数--监听页面显示
     */
    onShow: function() {

    },

    /**
     * 生命周期函数--监听页面隐藏
     */
    onHide: function() {

    },

    /**
     * 生命周期函数--监听页面卸载
     */
    onUnload: function() {

    },

    /**
     * 页面相关事件处理函数--监听用户下拉动作
     */
    onPullDownRefresh: function() {

    },

    /**
     * 页面上拉触底事件的处理函数
     */
    onReachBottom: function() {

    },

    /**
     * 用户点击右上角分享
     */
    onShareAppMessage: function() {

    }
})