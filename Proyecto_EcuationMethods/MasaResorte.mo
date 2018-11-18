package MasaResorte
  package EcuacionSistemaMasaResorte
    model EcuacionMasaResorte
      Real F;
      Real Xfinal;
      Real DeltaX;
      parameter Real xref=70;
      Record.Parametros r annotation(
        Placement(visible = true, transformation(origin = {-6, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      F = r.m * der(xref) ^ 2 + r.B * der(xref) + r.K*xref;
      Xfinal=(F/r.K)+ xref;
      DeltaX=Xfinal-xref;
    end EcuacionMasaResorte;












  end EcuacionSistemaMasaResorte;


  package Record
    partial record ParametrosParciales
      parameter Real m;
      parameter Real B;
      parameter Real K;
      parameter Real xref; //NO SE ESTA USANDO
    end ParametrosParciales;


    record Parametros
    extends ParametrosParciales(m=40,B=150,K=110);
    end Parametros;







  end Record;
end MasaResorte;
