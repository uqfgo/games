import { request } from "../../request/index.js"

// 引入第三方文件
import regeneratorRuntime from "../../lib/runtime/runtime"


Page({

    /**
     * 页面的初始数据
     */
    data: {
        goodsObj: {},
        collectCondition: false
    },
    GoodsInfo: {},

    /**
     * 生命周期函数--监听页面加载
     */
    onLoad: function(options) {
        const goods_id = options.goods_id
        this.getGoodsDetail(goods_id)
    },
    onShow: function() {

    },
    update: function() {

        const goods = wx.getStorageSync('GoodsInfo') || []


        const goodsArr = wx.getStorageSync('collectData') || []


        const flag = goodsArr.some(item => item.goods_id === goods.goods_id)

        this.setData({
            collectCondition: flag
        })
    },
    async getGoodsDetail(ID) {
        const res = await request({ url: 'https://api.zbztb.cn/api/public/v1/goods/detail?goods_id=' + ID })
        this.GoodsInfo = res
        this.setData({
            goodsObj: {
                pics: res.pics,
                goods_id: res.goods_id,
                goods_price: res.goods_price,
                goods_name: res.goods_name,
                goods_introduce: res.goods_introduce
            }
        })
        wx.setStorageSync('GoodsInfo', this.GoodsInfo)

        this.update()

    },

    // 点击轮播图，放大功能
    handleprevewImage(e) {
        const { index } = e.currentTarget.dataset
        const urls = this.GoodsInfo.pics.map(v => v.pics_mid)
        wx.previewImage({
            current: urls[index],
            urls
        });

    },
    // 加入购物车
    setShoppingCart(e) {
        /**
         * 1、在本地创个数组，用来存放数据
         * 2、每次添加的时候以对象方式来添加，goodsObj.goods_name和goodsObj.goods_price和goodsObj.goods_num为一个数组
         * 3、每次添加的时候进行判断如果数组里有就把 goods_num进行++
         * 4、
         */
        let ShoppingData = wx.getStorageSync('ShoppingData') || [];
        let index = ShoppingData.findIndex(v => v.goods_id === this.data.goodsObj.goods_id)

        if (index === -1) {
            // 没这个商品就直接存
            ShoppingData.push({
                goods_id: this.data.goodsObj.goods_id,
                goods_image: this.data.goodsObj.pics[0].pics_mid_url,
                goods_name: this.data.goodsObj.goods_name,
                goods_price: this.data.goodsObj.goods_price,
                goods_num: 0,
                goods_checked: false
            })

            wx.setStorageSync('ShoppingData', ShoppingData)

            wx.showToast({
                title: '加入购物车成功',
                icon: 'success',
                mask: true
            });

        } else {
            // 有这个商品进行提示
            wx.showToast({
                title: '该商品已在购物车中',
                icon: 'none',
                mask: true
            });
        }
    },

    /**
     * 立即购买
     */
    clickBuy: function(e) {
        let goodsObj = this.data.goodsObj
        console.log();

        let payData = [{
            goods_num: 1,
            goods_price: goodsObj.goods_price,
            goods_name: goodsObj.goods_name,
            goods_image: goodsObj.pics[0].pics_big_url
        }]

        wx.setStorageSync('payData', payData)

        wx.navigateTo({
            url: '/pages/pay/index'
        })

    },
    /* 收藏 */
    collect: function(e) {
        const collectCondition = !(this.data.collectCondition)

        let collectArr = wx.getStorageSync('collectData') || []

        const flag = collectArr.some(item => item.goods_id === this.GoodsInfo.goods_id)

        if (collectCondition) {

            wx.showToast({
                title: '收藏成功',
                icon: 'success',
                duration: 1500,
                mask: true
            })

            // 当收藏成功之后，判断缓存的收藏数据中没有没该商品的存在

            if (!flag) {
                // 没有的话添加该商品到收藏数据中
                collectArr.push(this.GoodsInfo)
            }

        } else {

            wx.showToast({
                title: '取消收藏成功',
                icon: 'success',
                duration: 1500,
                mask: true
            })

            // 当取消收藏之后，判断缓存中的收藏数据没有有存在，并取消
            if (flag) {
                collectArr = collectArr.filter(item => item.goods_id !== this.GoodsInfo.goods_id)
            }

        }

        wx.setStorageSync('collectData', collectArr)

        this.setData({
            collectCondition
        })


    }
})