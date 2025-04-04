os.execute("chcp 65001 > nul")
local Calculator
do
  local _class_0
  local _base_0 = {
    sum = function(self, x, y)
      return print("La suma de " .. tostring(x) .. " y " .. tostring(y) .. " es " .. tostring(x + y) .. ".")
    end,
    res = function(self, x, y)
      return print("La resta de " .. tostring(x) .. " y " .. tostring(y) .. " es " .. tostring(x - y) .. ".")
    end,
    mul = function(self, x, y)
      return print("La multiplicación de " .. tostring(x) .. " y " .. tostring(y) .. " es " .. tostring(x * y) .. ".")
    end,
    div = function(self, x, y)
      if x == 0 or y == 0 then
        return print("Error: No se puede dividir entre 0.")
      else
        return print("La división de " .. tostring(x) .. " y " .. tostring(y) .. " es " .. tostring(x / y) .. ".")
      end
    end,
    cal = function(self, x, y, op)
      local _exp_0 = op
      if 1 == _exp_0 then
        return self:sum(x, y)
      elseif 2 == _exp_0 then
        return self:res(x, y)
      elseif 3 == _exp_0 then
        return self:mul(x, y)
      elseif 4 == _exp_0 then
        return self:div(x, y)
      else
        return print("Error: Operación no valida.")
      end
    end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function() end,
    __base = _base_0,
    __name = "Calculator"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Calculator = _class_0
end
local Start
do
  local _class_0
  local _parent_0 = Calculator
  local _base_0 = {
    operation = function(self)
      print("\n1. Suma  2. Resta  3. Multiplicación  4. División")
      print("Elige una operación: ")
      self.op = io.read()
      self.op = tonumber(self.op)
      return self.op
    end,
    getX = function(self)
      print("\nIngrese un primer número para la operación que quiera realizar: ")
      self.x = io.read()
      self.x = tonumber(self.x)
      return self.x
    end,
    getY = function(self)
      print("\nIngrese un segundo número para la operación que quiera realizar: ")
      self.y = io.read()
      self.y = tonumber(self.y)
      return self.y
    end,
    welcome = function(self)
      return print("Bienvenido usuario!")
    end,
    init = function(self)
      self:welcome()
      self.ope = self:operation()
      self.xs = self:getX()
      self.ys = self:getY()
      return self:cal(self.xs, self.ys, self.ope)
    end
  }
  _base_0.__index = _base_0
  setmetatable(_base_0, _parent_0.__base)
  _class_0 = setmetatable({
    __init = function(self, ...)
      return _class_0.__parent.__init(self, ...)
    end,
    __base = _base_0,
    __name = "Start",
    __parent = _parent_0
  }, {
    __index = function(cls, name)
      local val = rawget(_base_0, name)
      if val == nil then
        local parent = rawget(cls, "__parent")
        if parent then
          return parent[name]
        end
      else
        return val
      end
    end,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  if _parent_0.__inherited then
    _parent_0.__inherited(_parent_0, _class_0)
  end
  Start = _class_0
end
local start = Start()
return start:init()
