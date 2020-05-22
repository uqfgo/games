import { request } from "../../request/index.js"

// 引入第三方文件
import regeneratorRuntime from "../../lib/runtime/runtime"


// pages/category/index.js
Page({

    /**
     * 页面的初始数据
     */
    data: {
        scrollTop: 0,
        leftData: [],
        rightData: [],
        isIndex: 0
    },

    /**
     * 生命周期函数--监听页面加载
     */
    onLoad: function(options) {
        // 本地存储数据
        // 1、获取本地存储数据
        const Cates = wx.getStorageSync('cates')
        if (Cates) {
            // 判断旧数据有没有过期
            if (Date.now() - Cates.time > (1000 * 86400)) {
                // 当旧数据超过存在超过 24个小时 就重新获取
                this.getData()

            } else {
                // 如果数据没有过期 就直接从本地里获取数据
                this.Cates = Cates.data
                let leftData = this.Cates.map(v => v.cat_name)
                let rightData = this.Cates[0].children
                this.setData({
                    leftData,
                    rightData
                })
            }
        } else {
            this.getData()
        }

    },
    // async getData: function () {} 这样的写法是不行的
    async getData() {
        // request({ url: "https://api.zbztb.cn/api/public/v1/categories" })
        //     .then(result => {
        //         this.Cates = result.data.message

        //         // 第一次把获取的数据存在本地上
        //         wx.setStorageSync('cates', { time: Date.now(), data: this.Cates })

        //         let leftData = this.Cates.map(v => v.cat_name)
        //         let rightData = this.Cates[0].children
        //         this.setData({
        //             leftData,
        //             rightData
        //         })
        //     })

        // 使用 ES7 的 async await 来发送请求
        const res = await request({ url: 'https://api.zbztb.cn/api/public/v1/categories' })
        this.Cates = res
        wx.setStorageSync('cates', { time: Date.now(), data: this.Cates })
        let leftData = this.Cates.map(v => v.cat_name)
        let rightData = this.Cates[0].children
        this.setData({
            leftData,
            rightData
        })
    },
    Tap: function(e) {
        let { index } = e.currentTarget.dataset
        let rightData = this.Cates[index].children
        this.setData({
            isIndex: index,
            rightData,
            scrollTop: 0
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