## 项目结构

- Curious.zip——后端项目
- frontend_v1.zip——前端项目
- Curious_v1.sql——数据库文件


## 运行方式
1. 将前端项目与后端项目解压

2. 运行sql创建数据库

3. 修改后端项目app.py中的数据库连接配置

4. 在后端项目根目录下打开终端，执行

   ```
   venv/Scripts/.\acticate
   ```

   激活python虚拟环境

5. 在后端项目根目录下运行
	```
	python app.py
	```
	
	启动后端项目
	
6. 在前端项目根目录下运行
	```
	npm install
	npm run serve
	```
	启动后端项目

7. 浏览器打开http://localhost:8080可访问项目页面