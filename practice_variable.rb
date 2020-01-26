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

# --------------------------------------------------------------------

# クラスインスタンス変数とインスタンス変数 FugaクラスはHogeクラスを継承

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

class Fuga < Hoge
  @foo = 'Fizz'

  def self.foo
    # クラスインスタンスを参照
    @foo
  end

  def upcase_foo
    # インスタンス変数を参照
    @foo.upcase
  end
end

Hoge.foo #=> "Bar"
Fuga.foo #=> "Fizz"

hoge = Hoge.new('Baz')
hoge.foo #=> "Baz"

fuga = Fuga.new('FizzBuzz')
fuga.foo        #=> "FizzBuzz"
fuga.upcase_foo #=> "FIZZBUZZ"

Hoge.foo        #=> "Bar"
Fuga.foo        #=> "Fizz"