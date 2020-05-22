// pages/user/index.js
Page({

    /**
     * 页面的初始数据
     */
    data: {
        loginCondition: false,
        userInfo: [],
        collectData: []
    },

    /**
     * 生命周期函数--监听页面加载
     */
    onLoad: function(options) {

    },

    /**
     * 生命周期函数--监听页面初次渲染完成
     */
    onReady: function() {

    },
    /**
     * 登陆跳转
     */
    skipLogin: function() {
        wx.navigateTo({
            url: '/pages/login/index'
        })
    },
    /**
     * 退出登陆
     */
    drop: function() {
        wx.setStorageSync('userInfo', [])
        wx.setStorageSync('loginCondition', false)

        this.setData({
            userInfo: [],
            loginCondition: false
        })

        wx.showToast({
            title: '退出登陆成功',
            icon: 'none'
        })
    },
    /**
     * 收藏的商品
     */
    collectGoods: function(e) {

        const { index } = e.currentTarget.dataset

        wx.navigateTo({
            url: '/pages/collect/index?index=' + index
        })

    },

    /**
     * 生命周期函数--监听页面显示
     */
    onShow: function() {
        const loginCondition = wx.getStorageSync('loginCondition')
        const userInfo = wx.getStorageSync('userInfo')
        const collectData = wx.getStorageSync('collectData')


        this.setData({
            userInfo,
            loginCondition,
            collectData
        })
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