class A
    def method1
     puts"PARENT CLASS"
    end
end
class B<A
    def method2
     puts"CHILD CLASS"
    end
end
class  C<B
    def method2
     puts"GRAND CHILD CLASS"
    end
end

a=A.new
a.method1
a=B.new
a.method2
a=C.new
a.method2
