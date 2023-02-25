function [x]=wyznacznik(y)
    wym=size(y)
    d=wym(1)-wym(2)
    if d~=0 then
        disp("Nie da sie obliczyc wyznacznika macierzy")
    else
        suma=0
        roznica=0
        for j=0:(wym(1)-1)
           pom=1
           pom2=1
           for i=1:wym(1)
               if (i+j)>wym(1)
                   q=i+j-wym(1)
                   pom=pom*y(i,q)
               else
                   q=i+j
                   pom=pom*y(i,q)
               end
               q=wym(1)-i-j+1
               a=i
               if q<1
                   q=q+wym(1)
                   pom2=pom2*y(q,a)
               else
                   pom2=pom2*y(q,a)
                end
           end
           suma=suma+pom
           roznica=roznica+pom2
        end
    x=suma-roznica
    end
endfunction

Y=[2 3 4; 1 2 3; 3 1 1]
c=wyznacznik(Y)
e=det(Y)
