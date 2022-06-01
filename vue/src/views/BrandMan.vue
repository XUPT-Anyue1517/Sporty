<template>
  <div class="home" style="padding:10px">
    <!-- 功能区域 -->
    <div style="margin:10px 0">
      <el-button type="primary" @click="add">新增</el-button>

    </div>

    <!-- 搜索区域 -->
    <div style="margin:10px 0">
      <el-input v-model="search" placeholder="请输入关键字" style="width:20%" clearable />
      <el-button type="primary" style="margin:0 10px" @click="load">搜索</el-button>
    </div>

    <el-table :data="tableData" border stripe style="width: 99%">

      <el-table-column prop="id" label="ID" width="80" sortable />
      <el-table-column prop="logo" label="车标" width="120">
<!--        <img :src="userImg" alt="" width="90" height="90" style="border-radius: 10px">-->


        <template #default="scope">
          <el-image
              style="width: 90px; height: 90px;border-radius: 10px"
              :src="scope.row.logo"
          />
        </template>

      </el-table-column>
      <el-table-column prop="chineseName" label="中文名称" width="130"/>
      <el-table-column prop="englishName" label="英文名称" width="130"/>
      <el-table-column prop="country" label="品牌国别" width="100"/>
      <el-table-column prop="intro" label="品牌介绍" width="630"/>
      <el-table-column label="操作" >
        <template #default="scope">
          <el-button @click="handleEdit(scope.row)"
          >编辑</el-button
          >
          <!-- <el-button
            size="small"
            type="danger"
            @click="handleDelete(scope.$index, scope.row)"
            >删除</el-button> -->
          <el-popconfirm title="确认删除?" type="danger" @confirm="handleDelete(scope.row.id)">
            <template #reference>
              <el-button type="danger">删除</el-button>
            </template>
          </el-popconfirm>
        </template>
      </el-table-column>
    </el-table>

    <div style="margin:10px 0">
      <el-pagination
          v-model:currentPage="currentPage4"
          v-model:page-size="pageSize4"
          :page-sizes="[5, 10]"
          :small="small"
          :disabled="disabled"
          :background="background"
          layout="total, sizes, prev, pager, next, jumper"
          :total="total"
          @size-change="handleSizeChange"
          @current-change="handleCurrentChange"
      />


      <el-dialog v-model="dialogVisible"
                 title="新增数据"
                 width="30%"
      >
        <el-form-item style="text-align: center" label-width="0">
          <el-upload
              class="avatar-uploader"
              action="http://localhost:8080/cars/upload"
              :show-file-list="false"
              :on-success="handleAvatarSuccess"
              style="margin: 5px auto;width: 80%"
          >
            <img :src="form.logo" width="90" height="90" class="avatar " style="border-radius: 10px">
          </el-upload>
        </el-form-item>
        <el-form :model="form" label-width="120px">
          <el-form-item label="中文名称">
            <el-input v-model="form.chineseName" style="width:80%"></el-input>
          </el-form-item>
          <el-form-item label="英文名称">
            <el-input v-model="form.englishName" style="width:80%"></el-input>
          </el-form-item>
          <el-form-item label="品牌国别">
            <el-input v-model="form.country" style="width:80%"></el-input>
          </el-form-item>
          <el-form-item label="品牌介绍">
<!--            <el-input></el-input>-->
            <textarea v-model="form.intro" style="width:80%;line-height: 20px"></textarea>
          </el-form-item>
        </el-form>
        <template #footer>
          <span class="dialog-footer">
            <el-button @click="dialogVisible = false">取消</el-button>
            <el-button type="primary" @click="save"
            >确认</el-button
            >
          </span>
        </template>
      </el-dialog>

    </div>
  </div>
</template>

<script>
import { assertExpressionStatement } from '@babel/types'
import  request  from '@/utils/request'


export default {
  name: 'BrandMan',
  components: {

  },
  data() {
    return {
      form:{},
      dialogVisible: false,
      search:'',
      currentPage4:1,
      pageSize4:5,
      total:0,
      tableData:[

      ],
    }
  },
  created() {
    this.load()
  },
  methods: {
    load(){
      request.get("/brand",{
        params:{
          pageNum:this.currentPage4,
          pageSize:this.pageSize4,
          search:this.search
        }
      }).then(res => {
        console.log(res);
        this.tableData = res.data.records
        this.total = res.data.total
      })
    },
    add(){
      this.dialogVisible = true
      this.form = {}
    },
    save(){
      if(this.form.id){
        request.put("/brand",this.form).then(res => {
          console.log(res)
          if(res.code == 0 ){
            this.$message.success("更新成功")
          }else{
            this.$message.error(res.msg)
          }
          this.load()
          this.dialogVisible = false
        })
      } else{
        request.post("/brand",this.form).then(res => {
          console.log(res)
          if(res.code == 0 ){
            this.$message.success("新增成功")
          }else{
            this.$message.error(res.msg)
          }
          this.load()
          this.dialogVisible = false
        })
      }
    },
    handleEdit(row){
      this.form = JSON.parse(JSON.stringify(row))
      this.dialogVisible = true

    },
    handleDelete(id){
      console.log(id);
      request.delete("/brand/" + id).then(res => {
        if(res.code == 0 ){
          this.$message.success("删除成功")
        }else{
          this.$message.error(res.msg)
        }
        this.load()
      })

    },
    handleSizeChange(pageSize){     //改变每页数量触发
      this.pageSize4 = pageSize
      this.load()
    },
    handleCurrentChange(pageNum){  //改变当前页码触发
      this.currentPage4 = pageNum
      this.load()
    },
    pageSize4(){

    },
    handleAvatarSuccess(res) {

      this.form.logo = res.data
      this.$message.success("上传成功")
      this.update()
    },
    update() {
      request.put("/brand", this.form).then(res => {
        console.log(res)
        if (res.code === '0') {
          this.$message({
            type: "success",
            message: "更新成功"
          })
          sessionStorage.setItem("user", JSON.stringify(this.form))
          // 触发Layout更新用户信息
          this.$emit("userInfo")
        } else {
          this.$message({
            type: "error",
            message: res.msg
          })
        }
      })
    }
  },
}
</script>
