# Rails 单元测试
推荐好用的测试框架网站 Ruby Toolbox

本篇文章介绍如何使用 RSpec 测试框架，比官方的 minitest 更流行
## 单元测试要测什么？
目前我们只测 controllers
- 因为我们的 Model 和 View 都很简单
不测这些
- 不测 Rails 自带的功能，因为 Rails 测过了
- 不测第三方功能，因为他们应该自己测，我们直接 mock 掉
## 如何测试 controller
使用 RSpec 的 request test 功能
- 脚手架：`bin/rails generate rspec:request validation_codes`
- 想找 matcher 可以看 RSpec 文档 https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
- and 和 or 也是支持的，见文档。 https://relishapp.com/rspec/rspec-expectations/v/3-10/docs/compound-expectations

## 具体步骤
### 安装
在 Gemfile 添加依赖
```
group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  # 添加依赖
  gem "rspec-rails", "~> 5.0.0"
end
```
然后运行 `bundle`(`bundle --verbose`是进入啰嗦模式)

生成测试需要的配置`rails generate rspec:install`

生成测试文件 `bin/rails generate rspec:model user`

修改数据库测试文件
```yml
test:
  <<: *default
  database: mangosteen_test
  username: mangosteen
  password: 123456
  host: db-for-mangosteen
```

创建测试数据库 `RAILS_ENV=test bin/rails db:create``RAILS_ENV=test bin/rails db:migrate`

执行测试`bundle exec respec`

第一个测试代码：
```ruby
require "rails_helper"

RSpec.describe User, type: :model do
  it "有 email" do
    user = User.new(email: "shenxin@qq.com")
    expect(user.email).to eq("shenxin@qq.com")
  end
end

```
