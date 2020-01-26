# クラスインスタンス変数とインスタンス変数

class Hoge
  # クラスインスタンス変数
  @foo = 'Bar'

  def self.foo
    # クラスインスタンス変数
    @foo
  end

  def initialize(foo)
    # インスタンス変数
    @foo = foo
  end

  def foo
    # インスタンス変数
    @foo
  end
end

Hoge.foo #=> "Bar"
hoge = Hoge.new('Baz')
hoge.foo #=> "Baz"
Hoge.foo #=> "Bar"
