ilosc_zmiennych=input("Wprowadz ile zmiennych maja rownania: ")
ilosc_rownan=input("Wprowadz ilosc rownan: ")
rownania=zeros(ilosc_rownan,ilosc_zmiennych+1)
for x=1:ilosc_rownan do
    for y=1:(ilosc_zmiennych+1) do
        disp('w rownaniu ',x, 'przy zmiennej numer ',y,'jest wspolczynnik')
        rownania(x,y)=input("Wprowadź liczbe: ")
    end    
end
a=[1 1 1 1 2 ; 3 2 4 5 -1 ; 2 1 -1 -2 -1 ; 4 3 2 1 1]
pom=resize_matrix(rownania,ilosc_zmiennych,ilosc_rownan)
rzad_macierzy_rozszerzonej=rank(rownania)
rzad_macierzy_glownej=rank(pom)
rozwiazania=([])
if rzad_macierzy_glownej == rzad_macierzy_rozszerzonej then
    if ilosc_rownan>=ilosc_zmiennych then
        for i=1:ilosc_zmiennych do
            wyznacznik_pom=det(pom)
            pomocnicza=repmat(pom,1)
            pomocnicza(:,i)=rownania(:,ilosc_rownan+1)
            wyznacznik=det(pomocnicza)
            pom_wyz=wyznacznik/wyznacznik_pom 
            rozwiazania($+1)=pom_wyz
        end

        disp(rozwiazania)
    else
        disp('Nieskonczenie wiele rozwiazan')    
    end
else
    disp('Wprowadzony uklad rownan jest sprzeczny')
end
