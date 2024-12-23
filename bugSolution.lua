local function foo(a, b)
  if a == nil then
    return nil  -- Handle nil 'a' as before
  end
  if b == nil then
    b = 0  -- Provide a default value for nil 'b'
    -- Alternatively, you could throw an error: error("Second argument cannot be nil")
  end
  return a + b
end

print(foo(10, 20)) -- Output: 30
print(foo(nil, 20)) -- Output: nil
print(foo(10, nil)) -- Output: 10 -- Now handles nil 'b' correctly