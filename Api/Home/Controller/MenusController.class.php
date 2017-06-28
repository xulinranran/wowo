<?php
namespace Home\Controller;
use Think\Controller;
class MenusController extends PublicController{
   	public function index(){
        $this->page();
        $this->view();
    }

    public function add(){
        //icon-refresh:before{
        //获取小图标的类
        $icon = file_get_contents('Public/Admin/css/font-awesome.min.css');

        //匹配正则
        $reg = '/\.(icon-[\w\-]+):/';

        //查找全部
        preg_match_all($reg,$icon,$arr);

        $icons = $arr[1];

        //从提交的post里获取菜单的id
        $id = I('post.id');
        // 
        $pid = !empty($id)?$id:0;
        //查询菜单
        $this->menu = M('Menus')->where("`pid`=$pid")->select();
        //干掉所有标签
        // print_r($this->menu);die;

        $this->assign('icons',$icons);

        $this->view();

    }
    //提交数据
    public function addMenu(){
        //I接受表单post提交的数据
        $data = I('post.','');
        if(!empty($data['name'])&&!empty($data['pid'])&&!empty($data['en'])){

            if(!empty($data['c'])){
                //拼接后台菜单c和c子级的英文 
                $data['en'] = $data['c'].'/'.$data['en'];
            }
        }
        //实例化数据库对象
        $row = D('Menus')->add($data);

        if($row){
            $this->success('添加成功',U('add'),1);
        }else{
            $this->error('添加失败','add',1);
        }
    }



}