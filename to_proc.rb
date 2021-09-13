def a(&block)
  p block
end

a do

end

["a", "b", "c"].map(&:upcase)
