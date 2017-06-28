<?php
return array(
	//'配置项'=>'配置值'
	'DB_TYPE'               =>  'mysql',     // 数据库类型
    'DB_HOST'               =>  'localhost', // 服务器地址
    'DB_NAME'               =>  'firm',          // 数据库名
    'DB_USER'               =>  'root',      // 用户名
    'DB_PWD'                =>  'root',          // 密码
    'DB_PORT'               =>  '3306',        // 端口
    'DB_CHARSET'            =>  'utf8',      // 数据库编码默认采用utf8
    'DEFAULT_MODULE'        =>  'Admin',  // 默认模块
    'DEFAULT_CONTROLLER'    =>  'Index', // 默认控制器名称
    'DEFAULT_ACTION'        =>  'index', // 默认操作名称

    /* URL设置 */
    'URL_CASE_INSENSITIVE'  =>  true,   // 默认false 表示URL区分大小写 true则表示不区分大小写
    // 'URL_MODEL'             =>  1,       // URL访问模式,可选参数0、1、2、3,代表以下四种模式：
    'URL_ROUTER_ON'   => true, 
        
    //伪静态配置
    'URL_ROUTE_RULES'=>array( 
    '/^banner$/'=> 'Home/Product/banner', 
    // '/^api\/caseInfo\/(\d+)$/'=> 'Home/About/caseInfo?id=:1', 
    // '/^api\/anli$/'=> 'Home/About/anli', 
    // '/^api\/index$/'=> 'Home/About/index', 
    // '/^pro\/ajax\/(\d+)$/'=> 'Home/Product/ajax?wsid=:1232', 
    // '/^pro\/productinfo\/(\d+)$/'=> 'Home/Product/productinfo?id=:1'
          
        ),

);