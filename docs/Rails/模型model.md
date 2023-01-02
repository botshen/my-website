## rails 生成数据库
使用命令新建数据库操作文件
```bash
bin/rails g model item user_id:integer amount:integer notes:text tags_id:integer happene_at:datetime
```
string 和 text 的区别是对应数据库的 varchar 和 text
```ruby
class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.bigint :user_id
      t.integer :amount
      t.text :note
      # 这里需要注意的是 数组的写法
      t.bigint :tags_id, array: true
      t.datetime :happen_at

      t.timestamps
    end
  end
end

```
