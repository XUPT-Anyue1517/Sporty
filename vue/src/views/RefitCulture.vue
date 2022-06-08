<template>

  
  <div>
    <h1 class="title">What Is Modified Car?</h1>
    <el-row justify="center">
      <el-col :span="4">
        <el-image :src="ri_img">
        </el-image> 
        </el-col>
         <el-col :span="12" style="padding-top:30px;">
          <h3 class="show-kind" v-for="item in allkind" :key="item">
          {{item}}
          <font-awesome-icon :icon="['fas','star']" transform="shrink-6  "  spin/>
          </h3>
      
      </el-col>
    </el-row>
    <el-row justify="center">
      <el-col :span="16">
  <el-table
    :data="tableData"
    style="width: 100%"
  
    stripe
  >
    <el-table-column  label="Modified" width="200" align="center" >
        <template #default="scope">
          <span >
            <el-button round size="large" >{{ scope.row.kind }}
              <font-awesome-icon :icon="['fas','circle-arrow-right']" transform="shrink-2  right-6" />
            </el-button>
          </span>
      </template>
    </el-table-column>
    <el-table-column  label="" width="800"  >

       <template #default="scope">
          <span class="show-info" >&nbsp;&nbsp;&nbsp;&nbsp;{{scope.row.info }}</span>
      </template>
    </el-table-column>
 
  </el-table>
  </el-col>
  </el-row>

 
  </div>

</template>

<script>
import { Search } from '@element-plus/icons-vue'
import request from "@/utils/request";
import router from "@/router";
import { library } from "@fortawesome/fontawesome-svg-core";
import { fas} from "@fortawesome/free-solid-svg-icons";
import { fab } from '@fortawesome/free-brands-svg-icons';
import { far } from '@fortawesome/free-regular-svg-icons';
library.add(fas,fab,far);
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
  margin:25px 40px;
  color:black;
  font-weight: 500;
  font-family: STHeiti  ;
}

.show-info{
  color:#4e5969;
  margin:20px 10px;
  font-family: STKaiti;

  font-size: large;
}
</style>