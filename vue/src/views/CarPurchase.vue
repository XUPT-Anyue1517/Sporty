<template>

  <el-row class="row-bg" justify="center" gutter="20">
    <el-col :span="10">
      <el-image :src=purchaseLeft_img :fit="cover" style="width:640px;height:480px"> </el-image>
      <h1 style="text-align:center"></h1>
    </el-col>
    <el-col :span="9">
      <div class="purchaseRight">
        <span class="title-text">{{ carName }}</span>
        <br>
        <div class="text-info">
          <div style="display:inline">
          <el-icon v-for="item in 5" :key="item" color="#F7BA1E" size="20px" style="margin:10px 0"><StarFilled/></el-icon>
          </div>
          <span class="title-info-number" >700+</span>
          <span class="title-info-text">条评论</span>
          <div  class="title-info-separator"></div>
          <span class="title-info-text">30天内</span>
          <span class="title-info-number" >300+</span>
          <span class="title-info-text" >盒成交</span>
          <span class="title-info-text" style="font-size:10px;margin-left:20px">本产品采购属于商业贸易行为</span>
        </div>
        <div class="ord-detail" style="margin-top:10px">
          <div class="ord-price-contain">
            <span class="price-header title-info-text" style="font-size:20px">
                价格
            </span>
            <span class="price-text title-info-number">
                ￥{{ carPrice }}
            </span>
          </div>
        </div>

        <div class="ord-discount">
          <span class="price-header title-info-text" style="font-size:20px;top:2px">
                优惠
          </span>
           <el-select v-model="value1" class="m-2" placeholder="￥10优惠卷，满200使用" size="small">
          <el-option
            v-for="item in options"
            :key="item.value1"
            :label="item.label"
            :value="item.value1"
          />
          </el-select>
        </div>


        
        <div class="ord-service" style="margin-top:10px;">
          <span class="price-header title-info-text" style="font-size:20px;top:1px">
                服务
          </span>
          <span class="ord-service-text">
              30天免费赊账·48h发货·急速退款·不支持7天无理由退货
          </span>
        </div>

        <div class="ord-logistics" style="margin-top:20px;">
          <span class="price-header title-info-text" style="font-size:20px;top:1px">
                物流
          </span>
          <span class="ord-service-text">
              陕西省 西安市 <span style="color:#aaa">至</span>
              <el-select v-model="carStore" class="m-2" placeholder="默认驿站" size="small">
                  <el-option
                    v-for="item in optionsAddress"
                    :key="item.id"
                    :label="item.name"
                    :value="item.name"
                  />
              </el-select>
              <span>
                快递￥16,付款成功后2天发货
              </span>

          </span>
        </div>

        <div class="ord-num">
          <span class="price-header title-info-text" style="font-size:20px;top:2px">
                数量
          </span>
          <el-input-number v-model="num" :min="1" :max="10" @change="handleChange" />
        </div>


        <div class="ord-totalprice" style="margin:25px 0">
          <span class="price-header title-info-text" style="font-size:20px;bottom: 5px;">
                总价
          </span>
          <span class="price-text title-info-number" style="font-size:18px">
                {{price*num}}万元
            </span>
        </div>

        <div class="pay-way">
            <span class="price-header title-info-text" style="font-size:20px;top:1px">
                支付
          </span>
          <span class="pay-card">
          
              <el-button color="#626aef" :dark="isDark" @click="confirm('支付宝')">
              支付宝<img src="../assets/img/car/car_img/car_purchase/bao.png" alt="">
              </el-button>
              <el-button color="#626aef" :dark="isDark" @click="confirm('微信')">
              微信<img src="../assets/img/car/car_img/car_purchase/wechat.png" alt="">
              </el-button>
              <el-button color="#626aef" :dark="isDark" @click="confirm('银行卡')">
              银行卡<img src="../assets/img/car/car_img/car_purchase/car.png" alt="">
              </el-button>
          </span>
        </div>


        <el-dialog v-model="dialogVisible"
                   title="订单确认"
                   width="40%"
        >
          <div  width="120">

            <div style="text-align: center;margin: 0 auto">
              <img :src=purchaseLeft_img width="290" height="210" class="avatar " style="border-radius: 10px">
            </div>
            <div style="width: 300px;margin: 20px auto">
              商品名称：{{carName}}
            </div>
            <div style="width: 300px;margin: 20px auto">
              商品数量：{{num}}
            </div>
            <div style="width: 300px;margin: 20px auto">
              支付方式：{{payWay}}
            </div>
            <div style="width: 300px;margin: 20px auto">
              门店地址：{{carStore}}
            </div>
            <div style="width: 300px;margin: 20px auto">
              单价：{{onePrice*10000}}
            </div>
            <div style="width: 300px;margin: 20px auto">
              总价：{{onePrice*10000*num}}
            </div>

<!--            <div style="width: 300px;margin: 20px auto">-->
<!--              {{customerId}}-->
<!--            </div>-->

          </div>
          <template #footer>
          <span class="dialog-footer">
            <el-button @click="dialogVisible = false">取消</el-button>
            <el-button type="primary" @click="save">确认</el-button>
          </span>
          </template>
        </el-dialog>

      </div>
    </el-col>
  </el-row>



</template>

<script>

import { ref } from 'vue'
import { StarFilled } from '@element-plus/icons-vue'
import request from "@/utils/request";
import router from "@/router";
export default {
   components: {
    StarFilled,
    
  },
  name: "CarPurchase",
  data(){
    return{
      path:this.$route.path,
      purchaseLeft_img:[
        require("../assets/img/car/car_img/car_Case/gg.webp"),
      ],
      carName:'',
      carPrice:'',
      optionsAddress:[],
      price:'',
      num:'',
      dialogVisible:false,
      payWay:'',
      onePrice:'',
      carStore:'',
      allPrice:'',
      customerId:''

    }
  },
  created() {
    this.load()
    this.loadCarStore()
  },
  methods:{
     save(){
       if(this.customerId !== '' &&
           this.carName !== '' &&
           this.num !== '' &&
           this.payWay !== '' &&
           this.payWay !== '' &&
           this.carStore !== '' &&
           this.onePrice !== '' ){
         request.post("/order",{
           customerId:this.customerId,
           name:this.carName,
           count:this.num,
           payWay:this.payWay,
           carStore:this.carStore,
           price:this.onePrice*10000,
           totalPrice:this.price*this.num*10000
         }).then(res => {
           if(res.code === '0'){
             this.$router.push("/refitpurchasesuccess")
           }else if (res.code === '-1'){
             this.$message.error("出错了")
           }
         })
       }else {
         this.$message.error("有空没填呢")
       }
     },
     load(){
       this.carName = this.$route.query.name
       request.get("/car",{
         params:{
           pageNum:'1',
           pageSize:'5',
           name:this.$route.query.name
         }
       }).then(res => {
         console.log(res);
         // this.tableData = res1.data.records
         // this.total = res1.data.total

         this.purchaseLeft_img = res.data.records[0].img
         this.carPrice = res.data.records[0].price
         let str = res.data.records[0].price.indexOf('-')
         if(str !== -1){
           this.onePrice = res.data.records[0].price.split("-")[0]
           this.price = res.data.records[0].price.split("-")[0]
         }else if (str === -1) {

           this.onePrice = res.data.records[0].price.split("万")[0]
           this.price = res.data.records[0].price.split("万")[0]
         }
         // this.carCountry = res.data.records[0].country
         // this.carIntro = res.data.records[0].intro
       })
     },
     loadCarStore(){
       request.get("/carstore",{
         params:{
           pageNum:this.currentPage4,
           pageSize:this.pageSize4,
           name:''
         }
       }).then(res => {
         console.log(res);
         this.optionsAddress = res.data.records
         // this.total = res.data.total
       })
     },
    confirm(payWay){


      let str = sessionStorage.getItem("user") || "{}"
      if(str === '{}'){
        this.$message.error("请先登录")
      }else {
        this.customerId = JSON.parse(sessionStorage.getItem("user")).id
        this.payWay = payWay
        this.dialogVisible = true
      }
    },
    handleChange(){
      this.allPrice = res.data.records[0].price.split("-")[0] * 10000 * this.num

    }
  },
  setup(){

    const title = ref("专业制造通用外置高流量改装车油泵0580254044 300LPH越野车改装");

    const value1 = ref('');
    const value2 = ref('');
    const options = [
      {
        value1: '20.00首2小时买3免1',
        label: '20.00首2小时买3免1',
      },
      {
        value1: '专区限时9折起',
        label: '专区限时9折起',
      },
      {
        value1: '￥10优惠卷，满200使用',
        label: '￥10优惠卷，满200使用',
      },
      {
        value1: '￥50优惠卷，满600使用',
        label: '￥50优惠卷，满600使用',
      },
      {
        value1: '￥100优惠卷，满1000使用',
        label: '￥100优惠卷，满1000使用',
      },
    ];

    const optionsAddress = [
      {
        value2: '北京市',
        label: '北京市',
      },
      {
        value2: '上海市',
        label: '上海市',
      },
      {
        value2: '深圳市',
        label: '深圳市',
      },
      {
        value2: '重庆市',
        label: '重庆市',
      },
      {
        value2: '广州市',
        label: '广州市',
      },
    ];

    const price = ref('200.2');


    const num = ref(1);
    const handleChange = (num) => {

    };

    const payWay = ref("")

    function ways1(){
      payWay.value = "支付宝";
      console.log("^^^"+payWay.value);
    }

    function ways2(){
      payWay.value = "微信";
      console.log("^^^"+payWay.value);
    }
    function ways3(){
      payWay.value = "银行卡";
      console.log("^^^"+payWay.value);
    }

    return {
      options,
      optionsAddress,
      num,
      handleChange,
      value1,
      value2,
      price,
      ways1,
      ways2,
      ways3,
      title,

    }
  }
}
</script>

<style scoped>
.el-row {
  margin-bottom: 20px;
  margin-top: 50px;
}
.el-row:last-child {
  margin-bottom: 0;
}
.el-col {
  border-radius: 4px;
}

.grid-content {
  border-radius: 4px;
  min-height: 36px;
}

.title-text{
  font-size: 36px;
  font-weight: 800;
  font-family: 'Microsoft YaHei';
}

.title-info-number{
  position: relative;
  bottom:5px;
  font-size: 13px;
  color: #ff4000;
  font-weight: 700;
  margin:0 5px;
}
.title-info-text{
  position: relative;
  bottom:5px;
  font-size: 13px;
  color: #999;
}
.title-info-separator{
  display: inline-block;
  position: relative;
  bottom:2px;
  display: inline;
  margin:0 10px;
  border-right:2px #ddd solid;
}

.price-header{
  display: inline-block;
  width:100px;
  height: 20px;
  bottom:10px;
}
.price-text{
  display: inline-block;
  width:600px;
  font-size: 30px;
}

。ord-service-text{
    font-size: 14px;
    height: 18px;
    line-height: 18px;
    color:#333;

}

.pay-button{
  margin-top:20px;
  
}
.pay-way{
  margin-top:10px;
}
.pay-card{
  font-size: 16px;
  font-weight: 600;
}

.ord-num{
  margin:20px 0;
}

</style>