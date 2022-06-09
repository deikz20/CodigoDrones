Select 
 venta.venta_id, periodo.periodo_id, contrato.contrato_id, plan_de_servicio.servicio_id
 
 from 
 venta, periodo, contrato, plan_de_servicio
 
 where
 
 venta.id = venta.venta_id and
 contrato.id = contrato.contrato_id and
 servicio.id = plan_de_servicio.servicio_id in (
 select
 plan_de_servicio.servicio_id
	 from
	 plan_de_servicio
	 where
	  plan_de_servicio.servicio_id = 1);
