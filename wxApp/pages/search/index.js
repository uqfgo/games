import { request } from "../../request/index.js"

// 引入第三方文件
import regeneratorRuntime from "../../lib/runtime/runtime"


Page({

    /**
     * 页面的初始数据
     */
    data: {
        swiperList: [],
        Value: '',
        goods: []
    },
    TimeId: -1,

    /**
     * 生命周期函数--监听页面加载
     */
    onLoad: function(options) {

        console.log(1);

    },
    /**
     * 点击取消
     */
    cancel: function() {

        this.setData({
            Value: '',
            goods: []
        })

    },
    /**
     * 表单输入值时
     */
    handInput: function(e) {
        clearTimeout(this.TimeId)
        this.TimeId = setTimeout(() => {

            this.getSearchData(e.detail.value)
        }, 1000)
    },
    // 获取搜索的数据
    async getSearchData(query) {
        const res = await request({ url: 'https://api.zbztb.cn/api/public/v1/goods/qsearch', data: { query } })

        // 拿到搜索的数据后,存到本地页面
        this.setData({
            goods: res
        })

    },

    /**
     * 生命周期函数--监听页面初次渲染完成
     */
    onReady: function() {},

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