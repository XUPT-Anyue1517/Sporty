<template>
  
  <el-row>
    <el-col :span="11" :offset="4">
      <h1>张嘉祺吃狗屎</h1>
      <span>车型：丰田 普拉多</span>
      <span>编号：664654</span>
      <span>帖子类型：案例</span>
    </el-col>

    <el-col :span="6">
    
      <el-image style="width: 259px; height: 200px" :src="carCaseEssayRight_img" />
      <div style="margin-bottom:10px"></div>
      <br>
      <font-awesome-icon :icon="['fab','qq']" size="2x" transform="right-12" />
      <font-awesome-icon :icon="['fab','weixin']" size="2x" transform="right-42" />
      <font-awesome-icon :icon="['fab','weibo']" size="2x" transform="right-72"  />
      <br>
      <div style="margin-top:50px">
        <el-calendar v-model="value" style="height: 50px;" />
      </div>
    
    </el-col>
    
  </el-row>



</template>

<script>
import { ref } from 'vue'

import { library } from "@fortawesome/fontawesome-svg-core";
import { fas} from "@fortawesome/free-solid-svg-icons";
import { fab } from '@fortawesome/free-brands-svg-icons';
import { far } from '@fortawesome/free-regular-svg-icons';
library.add(fas,fab,far);


export default {
  name: "RefitCaseEssay",
  data(){
    return{
      path:this.$route.path,
      carCaseLeft_img:[
        require("../assets/img/car/car_img/car_Case/502993.jpg"),
        require("../assets/img/car/car_img/car_Case/bb.jpg"),
        require("../assets/img/car/car_img/car_Case/3.webp"),
        require("../assets/img/car/car_img/car_Case/4.webp")
      ],
      carCaseEssayRight_img:require("../assets/img/car/car_img/car_Case_Essay/img-right.png"),
      
    }
  },
  setup(){
    const value = ref(new Date());
    return value
  }
}
</script>

<style scoped>
.el-row {
  margin-bottom: 20px;
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
.el-calendar-table .el-calendar-day{
  height: 40px;
}
</style>