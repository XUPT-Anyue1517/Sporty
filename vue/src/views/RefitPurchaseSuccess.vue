<template>

  <el-row justify="center">
    <el-col :span="4" >
      <font-awesome-icon  :icon="['fas','circle-check']"  size="10x" color="#23C343" class="success"/>
      <br>
      <el-link href="index" style="margin-left:12px;margin-bottom:10px">支付成功，点击此处跳回主页
          <font-awesome-icon :icon="['fas','house']" style="margin-left:10px" color="#4e5969" size="2x"/>
      </el-link>
      <br>
      <span v-for="item in 7" :key="item">
        <font-awesome-icon :icon="['fas','fan']" size="2x" spin style="margin-left:1px" color="#F979B7"/>
      </span>
    </el-col>
  </el-row>
  
</template>

<script>
import { library } from "@fortawesome/fontawesome-svg-core";
import { fas} from "@fortawesome/free-solid-svg-icons";
import { fab } from '@fortawesome/free-brands-svg-icons';
import { far } from '@fortawesome/free-regular-svg-icons';
library.add(fas,fab,far);

import { ref } from 'vue'
import { StarFilled, } from '@element-plus/icons-vue'
export default {
   components: {
    StarFilled,
 
  
  },
  name: "RefitPurchaseSuccess",
  data(){
    return{
      path:this.$route.path,
  

    }
  },
  setup(){
    
    

    return {
     
    }
  }
}
</script>

<style scoped>
.el-row {
  margin-bottom: 20px;
  margin-top:30px;
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

.el-link {
  margin-right: 8px;
}
.el-link .el-icon--right.el-icon {
  vertical-align: text-bottom;
}
.success{
  margin-left: 20px;
  margin-top:50px;
  margin-bottom:50px;
}
</style>