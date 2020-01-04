class A
    
    private
    def method1
     puts"PARENT CLASS"
    end
    def method2
     puts"CHILD CLASS"
    end
  #public :method1, :method2
end
a=A.new
a.method1
a.method2
