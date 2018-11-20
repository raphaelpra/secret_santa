class Person
  attr_accessor :name, :group, :email, :santa
  attr_accessor :santa_kid1, :santa_kid2

  def initialize(attrs)
    self.name  = attrs["name"]
    self.group = attrs["group"]
    self.email = attrs["email"]
  end

  def can_be_santa_of?(other)
    group != other.group
  end

  def can_swap_santas_with?(other)
    santa.can_be_santa_of?(other) && other.santa.can_be_santa_of?(self)
  end

  def to_s
    "#{name} (#{group})"
  end

  def santas
    [santa, santa_kid1, santa_kid2]
  end

  def with_santa
    "#{self} - santa: #{santas.join(', ')}"
  end

end
