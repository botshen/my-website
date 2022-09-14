# rails 实现一个最简单的功能
## 数据库建模

建模工具：`bin/rails g model user email:string name:string`
生成了两个文件
```ruby title="user.rb"
class User < ApplicationRecord
end
```
```ruby title="20220914115059_create_users.rb"
class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
 
      t.timestamps
    end
  end
end

```
数据库操作工具：ActiveRecord::Migration
同步到数据库：bin/rails db:migrate
反悔命令：bin/rails  db:rollback step=1
