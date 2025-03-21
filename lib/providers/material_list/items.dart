import 'package:bdo_boats/domain/material.dart';
import 'package:bdo_boats/providers/material_list/aco.dart';
import 'package:bdo_boats/providers/material_list/artefato_piratas_cox_combate.dart';
import 'package:bdo_boats/providers/material_list/artefato_piratas_cox_negociacao_alto_nivel.dart';
import 'package:bdo_boats/providers/material_list/artefato_piratas_cox_negociacao_baixo_nivel.dart';
import 'package:bdo_boats/providers/material_list/carraca_epheria_ascensao_canhao_shiro.dart';
import 'package:bdo_boats/providers/material_list/carraca_epheria_ascensao_proa_shiro.dart';
import 'package:bdo_boats/providers/material_list/carraca_epheria_ascensao_casco_negro_shiro.dart';
import 'package:bdo_boats/providers/material_list/carraca_epheria_ascensao_vela_shiro.dart';
import 'package:bdo_boats/providers/material_list/carraca_epheria_bravura_canhao_shiro.dart';
import 'package:bdo_boats/providers/material_list/carraca_epheria_bravura_proa_shiro.dart';
import 'package:bdo_boats/providers/material_list/carraca_epheria_bravura_casco_negro_shiro.dart';
import 'package:bdo_boats/providers/material_list/carraca_epheria_bravura_vela_shiro.dart';
import 'package:bdo_boats/providers/material_list/carraca_epheria_canhao_toro_plus_10.dart';
import 'package:bdo_boats/providers/material_list/carraca_epheria_equilibrio_canhao_shiro.dart';
import 'package:bdo_boats/providers/material_list/carraca_epheria_equilibrio_proa_shiro.dart';
import 'package:bdo_boats/providers/material_list/carraca_epheria_equilibrio_casco_negro_shiro.dart';
import 'package:bdo_boats/providers/material_list/carraca_epheria_equilibrio_vela_shiro.dart';
import 'package:bdo_boats/providers/material_list/carraca_epheria_proa_toro_plus_10.dart';
import 'package:bdo_boats/providers/material_list/carraca_epheria_gradual_canhao_shiro.dart';
import 'package:bdo_boats/providers/material_list/carraca_epheria_gradual_proa_shiro.dart';
import 'package:bdo_boats/providers/material_list/carraca_epheria_gradual_casco_negro_shiro.dart';
import 'package:bdo_boats/providers/material_list/carraca_epheria_gradual_vela_shiro.dart';
import 'package:bdo_boats/providers/material_list/carraca_epheria_vela_toro_plus_10.dart';
import 'package:bdo_boats/providers/material_list/caule_alga_profunda.dart';
import 'package:bdo_boats/providers/material_list/cola_expansao.dart';
import 'package:bdo_boats/providers/material_list/cola_memorias_mar_profundo.dart';
import 'package:bdo_boats/providers/material_list/cola_tracos_onda.dart';
import 'package:bdo_boats/providers/material_list/contratorpedeiro_epheria.dart';
import 'package:bdo_boats/providers/material_list/contratorpedeiro_epheria_canhao_meina.dart';
import 'package:bdo_boats/providers/material_list/contratorpedeiro_epheria_canhao_meina_plus_10.dart';
import 'package:bdo_boats/providers/material_list/contratorpedeiro_epheria_canhao_verisha_plus_10.dart';
import 'package:bdo_boats/providers/material_list/contratorpedeiro_epheria_proa_dragao_negro.dart';
import 'package:bdo_boats/providers/material_list/contratorpedeiro_epheria_proa_dragao_negro_plus_10.dart';
import 'package:bdo_boats/providers/material_list/contratorpedeiro_epheria_proa_quartzo_branco_plus_10.dart';
import 'package:bdo_boats/providers/material_list/contratorpedeiro_epheria_casco_aprimorado_plus_10.dart';
import 'package:bdo_boats/providers/material_list/contratorpedeiro_epheria_casco_refinado.dart';
import 'package:bdo_boats/providers/material_list/contratorpedeiro_epheria_casco_refinado_plus_10.dart';
import 'package:bdo_boats/providers/material_list/contratorpedeiro_epheria_vela_camada.dart';
import 'package:bdo_boats/providers/material_list/contratorpedeiro_epheria_vela_camada_plus_10.dart';
import 'package:bdo_boats/providers/material_list/contratorpedeiro_epheria_vela_vento_branca_plus_10.dart';
import 'package:bdo_boats/providers/material_list/cristal_perola_brilhante.dart';
import 'package:bdo_boats/providers/material_list/cristal_perola_pura.dart';
import 'package:bdo_boats/providers/material_list/epheria_canhao_velho.dart';
import 'package:bdo_boats/providers/material_list/epheria_canhao_velho_plus_10.dart';
import 'package:bdo_boats/providers/material_list/epheria_casco_velho.dart';
import 'package:bdo_boats/providers/material_list/epheria_casco_velho_plus_10.dart';
import 'package:bdo_boats/providers/material_list/epheria_estatua_proa_velha.dart';
import 'package:bdo_boats/providers/material_list/epheria_estatua_proa_velha_plus_10.dart';
import 'package:bdo_boats/providers/material_list/epheria_vela_vento_velha.dart';
import 'package:bdo_boats/providers/material_list/epheria_vela_vento_velha_plus_10.dart';
import 'package:bdo_boats/providers/material_list/escultura_recife_puro.dart';
import 'package:bdo_boats/providers/material_list/ferro_forjado_rigido_oceano.dart';
import 'package:bdo_boats/providers/material_list/fragata_epheria.dart';
import 'package:bdo_boats/providers/material_list/lenho.dart';
import 'package:bdo_boats/providers/material_list/licenca_contratorpedeiro_epheria.dart';
import 'package:bdo_boats/providers/material_list/licenca_fragata_epheria.dart';
import 'package:bdo_boats/providers/material_list/licenca_navio_mercante_epheria.dart';
import 'package:bdo_boats/providers/material_list/licenca_veleiro_epheria.dart';
import 'package:bdo_boats/providers/material_list/barra_cobalto.dart';
import 'package:bdo_boats/providers/material_list/barra_cobalto_brilhante.dart';
import 'package:bdo_boats/providers/material_list/barra_coral_jade.dart';
import 'package:bdo_boats/providers/material_list/barra_grafite_expansao.dart';
import 'package:bdo_boats/providers/material_list/barra_mar_vermelho.dart';
import 'package:bdo_boats/providers/material_list/barra_sal_gema.dart';
import 'package:bdo_boats/providers/material_list/barra_sal_rocha_exuberante.dart';
import 'package:bdo_boats/providers/material_list/linho_reforcado.dart';
import 'package:bdo_boats/providers/material_list/madeira_compensada_gravacao_onda_violenta.dart';
import 'package:bdo_boats/providers/material_list/madeira_compensada_revestida_rubus.dart';
import 'package:bdo_boats/providers/material_list/madeira_compensada_gravada_escama_lua.dart';
import 'package:bdo_boats/providers/material_list/madeira_compensada_pinheiro.dart';
import 'package:bdo_boats/providers/material_list/madeira_compensada_revestida_pinheiro.dart';
import 'package:bdo_boats/providers/material_list/madeira_compensada_revestida_rubus_aprimorada.dart';
import 'package:bdo_boats/providers/material_list/madeira_construcao_brilho_onda.dart';
import 'package:bdo_boats/providers/material_list/madeira_construcao_envolto_brilho_azul_marinho.dart';
import 'package:bdo_boats/providers/material_list/madeira_expansao.dart';
import 'package:bdo_boats/providers/material_list/navio_mercante_epheria.dart';
import 'package:bdo_boats/providers/material_list/navio_mercante_epheria_canhao_meina.dart';
import 'package:bdo_boats/providers/material_list/navio_mercante_epheria_canhao_meina_plus_10.dart';
import 'package:bdo_boats/providers/material_list/navio_mercante_epheria_canhao_verisha_plus_10.dart';
import 'package:bdo_boats/providers/material_list/navio_mercante_epheria_proa_dragao_negro.dart';
import 'package:bdo_boats/providers/material_list/navio_mercante_epheria_proa_dragao_negro_plus_10.dart';
import 'package:bdo_boats/providers/material_list/navio_mercante_epheria_proa_latao_plus_10.dart';
import 'package:bdo_boats/providers/material_list/navio_mercante_epheria_casco_aprimorado.dart';
import 'package:bdo_boats/providers/material_list/navio_mercante_epheria_casco_aprimorado_plus_10.dart';
import 'package:bdo_boats/providers/material_list/navio_mercante_epheria_casco_refinado_plus_10.dart';
import 'package:bdo_boats/providers/material_list/navio_mercante_epheria_vela_camada.dart';
import 'package:bdo_boats/providers/material_list/navio_mercante_epheria_vela_camada_plus_10.dart';
import 'package:bdo_boats/providers/material_list/navio_mercante_epheria_vela_vento_branca_plus_10.dart';
import 'package:bdo_boats/providers/material_list/olho_abissal.dart';
import 'package:bdo_boats/providers/material_list/ouro_1kg.dart';
import 'package:bdo_boats/providers/material_list/permissao_alteracao_peca_carraca_epheria_bravura.dart';
import 'package:bdo_boats/providers/material_list/permissao_alteracao_peca_carraca_epheria_emergencia.dart';
import 'package:bdo_boats/providers/material_list/permissao_alteracao_peca_carraca_epheria_equilibrio.dart';
import 'package:bdo_boats/providers/material_list/permissao_alteracao_peca_carraca_epheria_gradual.dart';
import 'package:bdo_boats/providers/material_list/planta_construcao_proa_shiro.dart';
import 'package:bdo_boats/providers/material_list/planta_construcao_vela_shiro.dart';
import 'package:bdo_boats/providers/material_list/planta_construcao_canhao_shiro.dart';
import 'package:bdo_boats/providers/material_list/planta_construcao_casco_negro_shiro.dart';
import 'package:bdo_boats/providers/material_list/suporte_acabamento_elaborado.dart';
import 'package:bdo_boats/providers/material_list/tecido_linho.dart';
import 'package:bdo_boats/providers/material_list/tecido_linho_lua_gravada.dart';
import 'package:bdo_boats/providers/material_list/veleiro_bartali.dart';
import 'package:bdo_boats/providers/material_list/veleiro_bartali_canhao_velho_plus_10.dart';
import 'package:bdo_boats/providers/material_list/veleiro_bartali_casco_velho_plus_10.dart';
import 'package:bdo_boats/providers/material_list/veleiro_bartali_proa_velha_plus_10.dart';
import 'package:bdo_boats/providers/material_list/veleiro_bartali_vela_vento_velha_plus_10.dart';
import 'package:bdo_boats/providers/material_list/veleiro_epheria.dart';

List<Material> materialItems = [
  carracaEpheriaAscensaoVelaShiro,
  carracaEpheriaBravuraVelaShiro,
  carracaEpheriaEquilibrioVelaShiro,
  carracaEpheriaGradualVelaShiro,
  carracaEpheriaVelaToroPlus10,
  carracaEpheriaAscensaoCanhaoShiro,
  carracaEpheriaBravuraCanhaoShiro,
  carracaEpheriaEquilibrioCanhaoShiro,
  carracaEpheriaGradualCanhaoShiro,
  carracaEpheriaCanhaoToroPlus10,
  carracaEpheriaAscensaoCascoNegroShiro,
  carracaEpheriaBravuraCascoNegroShiro,
  carracaEpheriaEquilibrioCascoNegroShiro,
  carracaEpheriaGradualCascoNegroShiro,
  carracaEpheriaProaToroPlus10,
  carracaEpheriaAscensaoProaShiro,
  carracaEpheriaBravuraProaShiro,
  carracaEpheriaEquilibrioProaShiro,
  carracaEpheriaGradualProaShiro,
  permissaoAlteracaoPecaCarracaEpheriaEmergencia,
  permissaoAlteracaoPecaCarracaEpheriaBravura,
  permissaoAlteracaoPecaCarracaEpheriaEquilibrio,
  permissaoAlteracaoPecaCarracaEpheriaGradual,
  madeiraCompensadaGravacaoOndaViolenta,
  colaTracosOnda,
  plantaConstrucaoVelaShiro,
  plantaConstrucaoCanhaoShiro,
  plantaConstrucaoCascoNegroShiro,
  plantaConstrucaoProaShiro,
  acoMaterial,
  artefatoPiratasCoxCombate,
  artefatoPiratasCoxNegociacaoAltoNivel,
  artefatoPiratasCoxNegociacaoBaixoNivel,
  cauleAlgaProfunda,
  colaExpansao,
  colaMemoriasMarProfundo,
  contratorpedeiroEpheria,
  contratorpedeiroEpheriaCanhaoMeinaPlus10,
  contratorpedeiroEpheriaCanhaoMeina,
  contratorpedeiroEpheriaCanhaoVerishaPlus10,
  contratorpedeiroEpheriaProaDragaoNegroPlus10,
  contratorpedeiroEpheriaProaDragaoNegro,
  contratorpedeiroEpheriaProaQuartzoBrancoPlus10,
  contratorpedeiroEpheriaCascoAprimoradoPlus10,
  contratorpedeiroEpheriaCascoRefinadoPlus10,
  contratorpedeiroEpheriaCascoRefinado,
  contratorpedeiroEpheriaVelaCamadaPlus10,
  contratorpedeiroEpheriaVelaCamada,
  contratorpedeiroEpheriaVelaVentoBrancaPlus10,
  cristalPerolaBrilhante,
  cristalPerolaPura,
  epheriaCanhaoVelhoPlus10,
  epheriaCanhaoVelho,
  epheriaCascoVelhoPlus10,
  epheriaCascoVelho,
  epheriaProaVelhaPlus10,
  epheriaProaVelha,
  epheriaVelaVentoVelhaPlus10,
  epheriaVelaVentoVelha,
  esculturaRecifePuro,
  ferroForjadoRigidoOceano,
  fragataEpheria,
  lenho,
  licencaContratorpedeiroEpheria,
  licencaFragataEpheria,
  licencaNavioMercanteEpheria,
  licencaVeleiroEpheria,
  barraCobaltoBrilhante,
  barraCobalto,
  barraCoralJade,
  barraGrafiteExpansao,
  barraMarVermelho,
  barraSalGema,
  barraSalRochaExuberante,
  linhoReforcado,
  madeiraCompensadaGravadaEscamaLua,
  madeiraCompensadaPinheiro,
  madeiraCompensadaRevestidaPinheiro,
  madeiraCompensadaRevestidaRubus,
  madeiraCompensadaRevestidaRubusAprimorada,
  madeiraConstrucaoBrilhoOnda,
  madeiraConstrucaoEnvoltoBrilhoAzulMarinho,
  madeiraExpansao,
  navioMercanteEpheria,
  navioMercanteEpheriaCanhaoMeina,
  navioMercanteEpheriaCanhaoMeinaPlus10,
  navioMercanteEpheriaCanhaoVerishaPlus10,
  navioMercanteEpheriaProaDragaoNegro,
  navioMercanteEpheriaProaDragaoNegroPlus10,
  navioMercanteEpheriaProaLataoPlus10,
  navioMercanteEpheriaCascoAprimoradoPlus10,
  navioMercanteEpheriaCascoAprimorado,
  navioMercanteEpheriaCascoRefinadoPlus10,
  navioMercanteEpheriaVelaCamada,
  navioMercanteEpheriaVelaCamadaPlus10,
  navioMercanteEpheriaVelaVentoBrancaPlus10,
  suporteAcabamentoElaborado,
  olhoAbissal,
  ouro1kg,
  tecidoLinho,
  tecidoLinhoLuaGravada,
  veleiroBartali,
  veleiroBartaliCanhaoVelhoPlus10,
  veleiroBartaliCascoVelhoPlus10,
  veleiroBartaliProaVelhaPlus10,
  veleiroBartaliVelaVentoVelhaPlus10,
  veleiroEpheria,
];
