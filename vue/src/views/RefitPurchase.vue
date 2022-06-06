<template>

  <el-row class="row-bg" justify="center" gutter="20">
    <el-col :span="10">
      <el-image :src=purchaseLeft_img :fit="cover" style="width:600px;height:336px"> </el-image>
      <h1 style="text-align:center">张嘉祺eat奥力给</h1>
    </el-col>
    <el-col :span="9">
      <div class="purchaseRight">
        <span class="title-text">专业制造通用外置高流量改装车油泵0580254044 300LPH越野车改装</span>
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
                ￥250~300
            </span>
          </div>
        </div>

        <div class="ord-discount">
          <span class="price-header title-info-text" style="font-size:20px;top:2px">
                优惠
          </span>
           <el-select v-model="value" class="m-2" placeholder="Select" size="small">
          <el-option
            v-for="item in options"
            :key="item.value"
            :label="item.label"
            :value="item.value"
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
              <el-select v-model="value" class="m-2" placeholder="Select" size="small">
                  <el-option
                    v-for="item in optionsAddress"
                    :key="item.value"
                    :label="item.label"
                    :value="item.value"
                  />
              </el-select>
              <span>
                快递￥16,付款成功后2天发货
              </span>

          </span>
        </div>
        <div class="pay-way">
            <span class="price-header title-info-text" style="font-size:20px;top:1px">
                支付
          </span>
          <span class="pay-card">
          
              <el-button color="#626aef" :dark="isDark">
              支付宝<img src="../assets/img/car/car_img/car_purchase/bao.png" alt="">
              </el-button>
              <el-button color="#626aef" :dark="isDark">
              微信<img src="../assets/img/car/car_img/car_purchase/wechat.png" alt="">
              </el-button>
              <el-button color="#626aef" :dark="isDark">
              银行卡<img src="../assets/img/car/car_img/car_purchase/car.png" alt="">
              </el-button>
          </span>
        </div>
      </div>
    </el-col>
  </el-row>
  
  
</template>

<script>

import { ref } from 'vue'
import { StarFilled } from '@element-plus/icons-vue'
export default {
   components: {
    StarFilled,
    
  },
  name: "RefitPurchase",
  data(){
    return{
      path:this.$route.path,
      purchaseLeft_img:[
        require("../assets/img/car/car_img/car_Case/gg.webp"),
      ],
      

    }
  },
  setup(){
    const value = ref('')

    const options = [
      {
        value: 'Option1',
        label: 'Option1',
      },
      {
        value: 'Option2',
        label: 'Option2',
      },
      {
        value: 'Option3',
        label: 'Option3',
      },
      {
        value: 'Option4',
        label: 'Option4',
      },
      {
        value: 'Option5',
        label: 'Option5',
      },
    ];

     const optionsAddress = [
      {
        value: 'Option1',
        label: 'Option1',
      },
      {
        value: 'Option2',
        label: 'Option2',
      },
      {
        value: 'Option3',
        label: 'Option3',
      },
      {
        value: 'Option4',
        label: 'Option4',
      },
      {
        value: 'Option5',
        label: 'Option5',
      },
    ];
    

    return {
      options,
      optionsAddress,
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
  font-size: 16px;
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
  width:200px;
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

</style>