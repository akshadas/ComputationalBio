load HCVEgyptData.mat
disp(HCV)
class(HCV)
size(HCV)
sum(sum(ismissing(HCV)))
HCV1=HCV;

for j=1:1385
    
    %Age
    if HCV.Age(j)<32
    HCV1.Age(j)=1;
    else
        if HCV.Age(j)<37
            HCV1.Age(j)=2;
        else 
            if HCV.Age(j)<42
                HCV1.Age(j)=3;
            else
                if HCV.Age(j)<47
                    HCV1.Age(j)=4;
                else
                    if HCV.Age(j)<52
                        HCV1.Age(j)=5;
                    else 
                        if HCV.Age(j)<57
                            HCV1.Age(j)=6;
                        else 
                            if HCV.Age(j)<62
                                HCV1.Age(j)=7;
                            end
                        end
                    end
                end
            end
        end
    end
    
    %BMI
    if HCV1.BMI(j)<18.5
        HCV1.BMI(j)=1;
    else
        if HCV1.BMI(j)<25
            HCV1.BMI(j)=2;
        else
            if HCV1.BMI(j)<30
                HCV1.BMI(j)=3;
            else
                if HCV1.BMI(j)<35
                    HCV1.BMI(j)=4;
                else
                    if HCV1.BMI(j)<40
                        HCV1.BMI(j)=5;
                    end 
                end
            end
        end 
    end
    
    % WBC
    if HCV.WBC(j)<4000
        HCV1.WBC(j)=1;
    else
        if HCV.WBC(j)<11000
            HCV1.WBC(j)=2;
        else
            HCV1.WBC(j)=3;
        end
    end
    
    %RBC
    if HCV.RBC(j)<3000000
        HCV1.RBC(j)=1;
    else
        if HCV.RBC(j)<5000000
            HCV1.RBC(j)=2;
        else
            HCV1.RBC(j)=3;
        end
    end
    
    %Platelet
    if HCV.Plat(j)<100000
        HCV1.Plat(j)=1;
    else 
        if HCV.RBC(j)<255000
            HCV1.Plat(j)=2;
        else
            HCV1.Plat(j)=3;
        end
    end
   
   %HGB
   if HCV.Gender(j)==1
    if HCV.HGB(j)<14
        HCV1.HGB(j)=1;
    else
        if HCV.HGB(j)<17.5
            HCV1.HGB(j)=2;
        else
            HCV1.HGB(j)=3;
        end
    end
   else
    if HCV.HGB(j)<12.3
        HCV1.HGB(j)=4;
    else
        if HCV.HGB(j)<15.3
            HCV1.HGB(j)=5;
        else
            HCV1.HGB(j)=6;
        end
    end
   end
   
   %AST, ALTs
   for i=15:23
    if HCV.(i)(j)<20
        HCV1.(i)(j)=1;
    else
        if HCV.(i)(j)<40
            HCV1.(i)(j)=2;
        else
            HCV1.(i)(j)=3;
        end
    end
   end
   
   %RNAs
   for i=24:27
    if HCV.(i)(j)<=5
        HCV1.(i)(j)=1;
    else
        HCV1.(i)(j)=2;
    end
   end
   
end
