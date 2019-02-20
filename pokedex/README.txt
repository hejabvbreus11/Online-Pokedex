Author：Jarvis
Time：2019-02-17 17:09:07
项目架构：Spring + SpringMVC + Hibernate + SpringSecurity

说明:
    这是一个maven上基于MVC框架的Web项目，整个项目结构包括有本地连接的数据库(配置在jdbc.properties中，如果需要我从api里爬虫的原始数据可以发邮件给我：hejabvbreus11@163.com)，用于实现用户权限分级的SpringSecurity框架(配置在security文件夹下的PokedexAuthenticationProvider类中，需要自行override authenticate函数，可以实现从配置文件中读取hardcode的用户权限表或者连接数据库里的用户权限表)。

注意事项：
    1、连接数据库的属性我和谐掉了，到时候需要配置一下自己的数据库信息。配置文件地址：/src/main/resources/jdbc.properties
    2、由于web.xml配置中，配置SpringMVC时DispatcherServlet拦截了所有的请求，也就是说我们访问静态资源的请求也被拦截了（比如说一个页面加载一个js资源）。我在spring-mvc.xml配置有静态资源映射。
    3、由于resources文件夹下的媒体资源包含有图片/音频视频，为减小上传文件大小在此删去，如果希望复刻这些外部文件也可以通过邮件跟我沟通。
    4、初级用户仅有浏览首页权限，高级用户能够浏览图鉴及详情页，vip用户可以使用高级搜索/排序等功能，具体设置查看security文件夹下的那个类。
