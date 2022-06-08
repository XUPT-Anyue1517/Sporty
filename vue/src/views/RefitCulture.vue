<template>

  
  <div>
    <h1 class="title">What Is Modified Car?</h1>
    <el-row justify="center">
      <el-col :span="4">
        <el-image :src="ri_img">
        </el-image> 
        </el-col>
         <el-col :span="12" style="padding-top:40px">
          <h3 class="show-kind" v-for="item in allkind" :key="item">{{item}}</h3>
      
      </el-col>
    </el-row>
    <el-row justify="center">
      <el-col :span="16">
  <el-table
    :data="tableData"
    style="width: 100%"
    stripe
    :row-class-name="tableRowClassName"
    
  >
    <el-table-column prop="kind" label="Modified" width="200" align="center" ></el-table-column>
    <el-table-column prop="info" label="" width="800"  ></el-table-column>
 
  </el-table>
  </el-col>
  </el-row>

 
  </div>

</template>

<script>
import { Search } from '@element-plus/icons-vue'
import request from "@/utils/request";
import router from "@/router";
import { reactive } from 'vue-demi';
export default {
  name: "RefitCulture",
  data(){
    return{
      path:this.$route.path,
      tableData:[],
      pageNum:1,
      pageSize: 100,
      search:'',
      ri_img:require("../assets/img/car/car_img/car_Culture/q1.png"),
      allkind:["基础","品牌","外观","动力","操控","轮毂","灯光", "影音"],

    }
  },
  created() {
    this.load()
  },
  methods:{
    load(){
      request.get("/culture",{
        params:{
          pageNum:this.pageNum,
          pageSize:this.pageSize,
          search:this.search
        }
      }).then(res => {
        console.log(res);
        this.tableData = res.data.records
        this.total = res.data.total
      })
    },
    tableRowClassName({row, rowIndex}) {
        if (rowIndex === 1) {
          return 'warning-row';
        } else if (rowIndex === 3) {
          return 'success-row';
        }
        return '';
      }


    
    
  },
  

  
}
</script>

<style scoped>
.title{
  text-align: center;
  margin:30px 0;
}
.el-table .warning-row {
  --el-table-tr-bg-color: var(--el-color-warning-light-9);
}
.el-table .success-row {
  --el-table-tr-bg-color: var(--el-color-success-light-9);
}
.show-kind{
  display: inline-block;
  margin:10px 60px;
  color:#6b7785;
}
</style>