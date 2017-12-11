-- (c) 2007 Nymbia.  see LGPLv2.1.txt for full details.
--DO NOT MAKE CHANGES TO THIS FILE BEFORE READING THE WIKI PAGE REGARDING CHANGING THESE FILES
if not LibStub("LibPeriodicTable-3.1", true) then error("PT3 must be loaded before data") end
LibStub("LibPeriodicTable-3.1"):AddData("CurrencyItems", gsub("$Rev: 50 $", "(%d+)", function(n) return n+90000 end), {
	["CurrencyItems.Alterac Valley Mark of Honor"]="31839:2,31841:2,19083:10,19084:10,19085:10,19086:10,19099:10,19100:10,19103:10,19104:10,19319:10,19320:10,28246:10,28246:10,28247:10,28247:10,33056:10,33057:10,33064:10,33853:10,33918:10,33919:10,35129:10,35130:10,35131:10,37927:10,19101:15,19102:15,15198:20,15199:20,16440:20,16448:20,16454:20,16463:20,16471:20,16484:20,16540:20,16548:20,16555:20,16560:20,16571:20,16574:20,17584:20,17588:20,17608:20,17620:20,19087:20,19088:20,19089:20,19090:20,19091:20,19092:20,19093:20,19094:20,19095:20,19096:20,19097:20,19098:20,22862:20,22863:20,22864:20,22865:20,22867:20,22868:20,22869:20,22870:20,23274:20,23279:20,23280:20,23282:20,23284:20,23286:20,23288:20,23290:20,29595:20,29600:20,29607:20,29613:20,19308:25,19309:25,19310:25,19311:25,19312:25,19315:25,19321:25,19323:25,19324:25,19325:25,21563:25,16441:30,16451:30,16455:30,16465:30,16474:30,16478:30,16533:30,16542:30,16550:30,16561:30,16566:30,16578:30,17578:30,17591:30,17602:30,17623:30,19045:30,19046:30,23244:30,23251:30,23253:30,23255:30,23257:30,23259:30,23261:30,23263:30,23276:30,23306:30,23308:30,23310:30,23312:30,23314:30,23316:30,23318:30,29465:30,29466:30,29467:30,29468:30,29469:30,29470:30,29471:30,29472:30,29598:30,29604:30,29610:30,29616:30,34129:30,35906:30,18830:40,18831:40,18867:40,18868:40,18869:40,18871:40,18873:40,18874:40,18876:40,18877:40,23455:40,23465:40,41587:40,41588:40,41589:40,41590:40,19029:50,19030:50,19031:60,19032:60",
	["CurrencyItems.Apexis Crystal"]="32650:1,32652:1,32653:1,32654:1,32625:3,32627:3,32630:3,32631:3,32624:4,32626:4,32628:4,32629:4,32645:4,32647:4,32648:4,32651:4",
	["CurrencyItems.Apexis Shard"]="32784:2,32783:3,32596:10,32597:10,32599:10,32600:10,32828:10,32759:35,32634:40,32635:40,32636:40,32637:40,32638:40,32639:40,32650:50,32652:50,32653:50,32654:50,33934:50,33935:50,32645:100,32647:100,32648:100,32651:100,32640:160,32641:160",
	["CurrencyItems.Arathi Basin Mark of Honor"]="31838:2,31840:2,15196:3,15197:3,16341:10,16342:10,18427:10,18440:10,18441:10,18461:10,12584:20,15198:20,15199:20,16345:20,16437:20,16444:20,16446:20,16449:20,16457:20,16459:20,16462:20,16468:20,16472:20,16476:20,16480:20,16483:20,16536:20,16539:20,16544:20,16545:20,16551:20,16554:20,16558:20,16562:20,16568:20,16569:20,16573:20,16580:20,17580:20,17583:20,17586:20,17590:20,17604:20,17607:20,17618:20,17622:20,18825:20,18826:20,18827:20,18828:20,18838:20,18840:20,18843:20,18844:20,18847:20,18848:20,18865:20,18866:20,20041:20,20042:20,20043:20,20044:20,20045:20,20046:20,20047:20,20048:20,20049:20,20050:20,20051:20,20052:20,20053:20,20054:20,20068:20,20073:20,20088:20,20089:20,20090:20,20091:20,20092:20,20093:20,20094:20,20095:20,20096:20,20097:20,20098:20,20099:20,20100:20,20101:20,20102:20,20103:20,20104:20,20105:20,20106:20,20107:20,20108:20,20109:20,20110:20,20111:20,20112:20,20113:20,20114:20,20115:20,20116:20,20117:20,20118:20,20119:20,20120:20,20121:20,20122:20,20123:20,20124:20,20125:20,20126:20,20127:20,20128:20,20129:20,20150:20,20151:20,20152:20,20153:20,20154:20,20155:20,20156:20,20157:20,20159:20,20160:20,20161:20,20162:20,20163:20,20164:20,20165:20,20166:20,20167:20,20168:20,20169:20,20170:20,20171:20,20172:20,20173:20,20174:20,20177:20,20178:20,20179:20,20180:20,20181:20,20182:20,20183:20,20185:20,20186:20,20187:20,20188:20,20189:20,20190:20,20191:20,20192:20,20193:20,20195:20,20196:20,20197:20,20198:20,20199:20,20200:20,20201:20,20202:20,20204:20,20205:20,20206:20,20207:20,20208:20,20209:20,20210:20,20211:20,22843:20,22852:20,22855:20,22856:20,22857:20,22858:20,22859:20,22860:20,23243:20,23252:20,23254:20,23256:20,23258:20,23260:20,23262:20,23264:20,23275:20,23277:20,23278:20,23281:20,23283:20,23285:20,23287:20,23289:20,23291:20,23307:20,23309:20,23311:20,23313:20,23315:20,23317:20,23319:20,23451:20,23454:20,23456:20,23464:20,23466:20,23467:20,23468:20,23469:20,28377:20,28378:20,28379:20,28380:20,29594:20,29599:20,29601:20,29605:20,29606:20,29611:20,29612:20,29617:20,41591:20,41592:20,44429:20,44431:20,16443:30,16452:30,16453:30,16466:30,16473:30,16477:30,16535:30,16541:30,16549:30,16563:30,16565:30,16577:30,17581:30,17592:30,17605:30,17624:30,20071:30,20072:30,21115:30,21116:30,21117:30,21118:30,21119:30,21120:30,22872:30,22874:30,22876:30,22877:30,22879:30,22884:30,22885:30,22886:30,23272:30,23292:30,23294:30,23297:30,23298:30,23300:30,23303:30,23305:30,29465:30,29466:30,29467:30,29468:30,29469:30,29470:30,29471:30,29472:30,29596:30,29602:30,29609:30,29615:30,34129:30,35906:30,18833:40,18835:40,18836:40,18837:40,18855:40,18860:40,20055:40,20056:40,20057:40,20058:40,20059:40,20060:40,20061:40,20069:40,20070:40,20158:40,20175:40,20176:40,20184:40,20194:40,20203:40,20212:40,20214:40,20220:40,23452:40,23453:40,32797:40,32798:40,32799:40,32800:40,32801:40,32802:40,32803:40,32804:40,32805:40,32806:40,32807:40,32808:40,32979:40,32988:40,32998:40,35151:40,35152:40,35153:40,35154:40,35155:40,35156:40,35157:40,35158:40,35159:40,35160:40,35161:40,35162:40,35163:40,35164:40,35165:40",
	["CurrencyItems.Arcane Rune"]="28903:2,28904:2,28907:2,28908:2,28909:8,28910:8,28911:8,28912:8",
	["CurrencyItems.Arctic Fur"]="44546:2,44547:2,44548:2,44549:2,44550:2,44551:2,44552:2,44553:2",
	["CurrencyItems.Arena Points"]="",
	["CurrencyItems.Badge of Justice"]="23572:10,29388:15,29389:15,29390:15,30183:15,32227:15,32228:15,32229:15,32230:15,32231:15,32249:15,30763:20,30764:20,30767:20,30768:20,30770:20,30774:20,30779:20,30780:20,33502:20,33503:20,33504:20,33505:20,33506:20,33507:20,33508:20,33509:20,33510:20,29269:25,29270:25,29271:25,29272:25,29273:25,29274:25,29367:25,29368:25,29369:25,29373:25,29374:25,29375:25,29379:25,29381:25,29382:25,29384:25,29385:25,29386:25,32809:25,32810:25,32811:25,32812:25,32813:25,32814:25,32816:25,32817:25,32818:25,32819:25,32820:25,32821:25,32980:25,32989:25,32997:25,33192:25,30761:30,30762:30,30766:30,30769:30,30772:30,30773:30,30776:30,30778:30,29266:33,29267:33,29268:33,33296:35,33325:35,33334:35,33513:35,33516:35,33520:35,33529:35,33532:35,33535:35,33540:35,33557:35,33578:35,33580:35,33588:35,33589:35,33593:35,32785:40,32786:40,32787:40,32788:40,32789:40,32790:40,32791:40,32792:40,32793:40,32794:40,32795:40,32796:40,32797:40,32798:40,32799:40,32800:40,32801:40,32802:40,32803:40,32804:40,32805:40,32806:40,32807:40,32808:40,32979:40,32981:40,32988:40,32990:40,32998:40,32999:40,29370:41,29376:41,29383:41,29387:41,34949:45,34950:45,34951:45,34952:45,29275:50,32083:50,32084:50,32085:50,32086:50,32087:50,32088:50,32089:50,32090:50,33207:60,33222:60,33279:60,33280:60,33287:60,33291:60,33304:60,33324:60,33331:60,33333:60,33386:60,33484:60,33512:60,33514:60,33517:60,33519:60,33523:60,33524:60,33528:60,33531:60,33534:60,33536:60,33537:60,33539:60,33559:60,33577:60,33582:60,33583:60,33586:60,33587:60,33970:60,33973:60,33974:60,34887:60,34888:60,34889:60,34890:60,35321:60,35324:60,33501:75,33515:75,33518:75,33522:75,33527:75,33530:75,33538:75,33552:75,33566:75,33579:75,33584:75,33585:75,33810:75,33832:75,33965:75,33972:75,34049:75,34050:75,34162:75,34163:75,34902:75,34904:75,34911:75,34916:75,34919:75,34923:75,34926:75,34929:75,34932:75,34935:75,34938:75,34941:75,34944:75,34947:75,35326:75,34900:100,34901:100,34903:100,34905:100,34906:100,34910:100,34912:100,34914:100,34917:100,34918:100,34921:100,34922:100,34924:100,34925:100,34927:100,34928:100,34930:100,34931:100,34933:100,34934:100,34936:100,34937:100,34939:100,34940:100,34942:100,34943:100,34945:100,34946:100,34893:105,34894:105,34891:150,34892:150,34895:150,34896:150,34898:150",
	["CurrencyItems.Brewfest Prize Token"]="37750:2,39476:5,39477:5,37816:20,33864:50,33967:50,33968:50,33969:50,33047:100,33868:100,33927:100,33966:100,34008:100,33862:200,33863:200,37571:200,37599:200",
	["CurrencyItems.Burning Blossom"]="23246:2,34684:2,23211:5,23215:5,23326:5,23327:5,23435:5,34599:5,23324:100,34685:100,34683:200,23083:350,34686:350",
	["CurrencyItems.Coilfang Armaments"]="32903:1,32904:1",
	["CurrencyItems.Dalaran Cooking Award"]="43007:1,43018:3,43019:3,43020:3,43021:3,43022:3,43023:3,43024:3,43025:3,43026:3,43027:3,43028:3,43029:3,43030:3,43031:3,43032:3,43033:3,43034:3,43035:3,43036:3,43037:3,43505:3,43506:3",
	["CurrencyItems.Dalaran Jewelcrafter's Token"]="42225:1,42298:2,42299:2,42300:2,42301:2,42302:2,42303:2,42304:2,42305:2,42306:2,42307:2,42308:2,42309:2,42310:2,42311:2,42312:2,42313:2,42314:2,42315:2,41576:3,41577:3,41578:3,41579:3,41580:3,41581:3,41582:3,41686:3,41687:3,41688:3,41689:3,41690:3,41692:3,41693:3,41694:3,41696:3,41697:3,41698:3,41699:3,41701:3,41702:3,41703:3,42138:3,43317:4,43318:4,43319:4,43320:4,43485:4,43497:4,41704:5,41705:5,41706:5,41707:5,41708:5,41709:5,41710:5,41711:5,42648:6,42649:6,42650:6,42651:6,42652:6,42653:6,43597:6",
	["CurrencyItems.Dream Shard"]="37347:4,37349:4,44471:4,44472:4,44484:4,44485:4,44488:4,44489:4,44490:4,44491:4,44498:4,37339:10,37344:10,44473:10,44483:10,44486:10,44487:10,44492:10,44494:10,44495:10,44496:10",
	["CurrencyItems.Emblem of Heroism"]="43102:10,40705:15,40706:15,40707:15,40708:15,40709:15,40710:15,40711:15,40712:15,40713:15,40715:15,40716:15,40678:25,40679:25,40680:25,40681:25,40698:25,40699:25,40797:30,40798:30,40799:30,40856:30,40857:30,40858:30,40918:30,40960:30,40998:30,41004:30,41024:30,41041:30,41134:30,41140:30,41208:30,41214:30,41268:30,41271:30,41278:30,41290:30,41643:30,41646:30,41712:30,41770:30,41847:30,41850:30,41930:30,41937:30,41962:30,41968:30,42008:30,42014:30,40700:35,40701:35,40682:40,40683:40,40684:40,40685:40,40688:40,40689:40,40691:40,40692:40,40693:40,40694:40,40695:40,40696:40,40697:40,42944:40,42945:40,42949:40,42950:40,42951:40,42952:40,42984:40,42985:40,40778:45,40779:45,40780:45,40816:45,40817:45,40818:45,40836:45,40837:45,40838:45,40898:45,40930:45,40936:45,40986:45,40987:45,41010:45,41016:45,41023:45,41030:45,41078:45,41084:45,41148:45,41154:45,41160:45,41202:45,41269:45,41270:45,41272:45,41301:45,41313:45,41324:45,41644:45,41645:45,41647:45,41658:45,41664:45,41675:45,41848:45,41849:45,41851:45,41912:45,41918:45,41924:45,41943:45,41949:45,41956:45,41990:45,41996:45,42002:45,40702:50,40703:50,40704:50,42948:50,42991:50,42992:50,40613:60,40614:60,40615:60,42943:65,42946:65,42947:65,40610:80,40611:80,40612:80,44230:200,44231:200",
	["CurrencyItems.Emblem of Valor"]="40717:25,40718:25,40719:25,40720:25,40721:25,40722:25,40723:25,40724:25,40801:30,40802:30,40803:30,40859:30,40860:30,40861:30,40925:30,40961:30,40999:30,41005:30,41036:30,41042:30,41135:30,41141:30,41209:30,41215:30,41273:30,41279:30,41284:30,41291:30,41681:30,41713:30,41765:30,41771:30,41867:30,41872:30,41931:30,41938:30,41963:30,41969:30,42009:30,42015:30,40742:40,40743:40,40745:40,40746:40,40747:40,40748:40,40749:40,40750:40,40751:40,40781:45,40782:45,40783:45,40819:45,40820:45,40821:45,40840:45,40841:45,40842:45,40904:45,40931:45,40937:45,40988:45,40989:45,41011:45,41017:45,41025:45,41031:45,41079:45,41085:45,41149:45,41155:45,41162:45,41203:45,41296:45,41302:45,41308:45,41314:45,41319:45,41325:45,41648:45,41653:45,41659:45,41665:45,41670:45,41676:45,41852:45,41857:45,41862:45,41913:45,41919:45,41925:45,41944:45,41950:45,41957:45,41991:45,42001:45,42003:45,40637:60,40638:60,40639:60,40733:60,40734:60,40735:60,40736:60,40737:60,40738:60,40739:60,40740:60,40741:60,40634:75,40635:75,40636:75",
	["CurrencyItems.Glowcap"]="25548:1,25550:1,30156:1,24539:2,27689:2,31775:10,25828:15,29149:20,22916:25,25827:25,38229:25,22906:30,34478:30,29150:45",
	["CurrencyItems.Halaa Battle Token"]="27637:20,27638:20,27639:20,27643:20,27644:20,27645:20,27646:20,27647:40,27648:40,27649:40,27650:40,27652:40,27653:40,27654:40,28915:70,27679:100,29228:100",
	["CurrencyItems.Halaa Research Token"]="27637:1,27638:1,27639:1,27643:1,27644:1,27645:1,27646:1,27647:2,27648:2,27649:2,27650:2,27652:2,27653:2,27654:2,32071:2,33783:4,27680:8,28915:15,29228:20",
	["CurrencyItems.Heavy Borean Leather"]="44513:3,44514:3,44515:3,44516:3,44517:3,44518:3,44519:3,44520:3,44521:3,44522:3,44523:3,44524:3,44525:3,44526:3,44527:3,44528:3,44530:3,44531:3,44532:3,44533:3,44534:3,44535:3,44536:3,44537:3,44538:3,44539:3,44540:3,44541:3,44542:3,44543:3,44544:3,44545:3,44584:3,44585:3,44586:3,44587:3,44588:3,44589:3",
	["CurrencyItems.Holy Dust"]="28878:2,28881:2,28882:2,28885:2,28886:8,28887:8,28888:8,28889:8",
	["CurrencyItems.Honor Points"]="",
	["CurrencyItems.Mark of Honor Hold"]="24520:5,27809:10,27812:10,27820:10,28361:10,27833:15,27834:15,27929:15,27931:15,27942:15,27983:15,27984:15,27990:15,27921:30,27922:30,27927:30",
	["CurrencyItems.Mark of the Illidari"]="32898:1,32899:1,32900:1,32901:1,35716:1,35717:1",
	["CurrencyItems.Mark of Thrallmar"]="24522:5,27777:10,27785:10,27786:10,28360:10,27830:15,27832:15,27928:15,27930:15,27939:15,27947:15,27949:15,27989:15,27920:30,27924:30,27926:30",
	["CurrencyItems.Necrotic Rune"]="22999:8,23122:8,23123:8,40601:8,43068:15,43070:15,43073:15,43074:15,43077:15,43078:15,43081:15,43082:15,43530:20,43531:20,40593:30,40492:40",
	["CurrencyItems.Spirit Shard"]="32947:2,32948:2,28556:8,28557:8,28559:18,28560:18,28561:18,28574:18,28575:18,28576:18,28577:18,28758:18,28759:18,28760:18,28761:18,28553:50,28555:50",
	["CurrencyItems.Stone Keeper's Shard"]="41727:12,41728:12,41730:12,41732:12,41733:12,41734:12,41735:12,41736:12,41737:12,41738:12,41739:12,41740:12,44076:15,44078:15,44081:15,44082:15,44084:15,44087:15,44088:15,44089:15,44066:20,41742:24,41743:24,41744:24,44067:30,44068:30,44115:30,44069:40,44075:40,44091:200,44096:200,44099:200,44100:200,44101:200,44102:200,44103:200,44105:200,44107:200,44094:250,44097:250,44098:250,43956:300,44077:300,44092:325,44093:325,44095:325",
	["CurrencyItems.Strand of the Ancients Mark of Honor"]="",
	["CurrencyItems.Sunmote"]="34381:1,34382:1,34383:1,34384:1,34385:1,34386:1,34388:1,34389:1,34390:1,34391:1,34392:1,34393:1,34394:1,34395:1,34396:1,34397:1,34398:1,34399:1,34400:1,34401:1,34402:1,34403:1,34404:1,34405:1,34406:1,34407:1,34408:1,34409:1",
	["CurrencyItems.Venture Coin"]="38356:30,38357:30,38360:30,38361:30,38362:30,38363:30,38364:30,38365:30,38366:30,38367:30,38368:30,38353:50,38354:50,38355:50,38358:70,38359:70",
	["CurrencyItems.Warsong Gulch Mark of Honor"]="31853:2,31855:2,15196:3,15197:3,16486:10,16497:10,16532:10,18429:10,18430:10,18432:10,18434:10,18435:10,18436:10,18437:10,18445:10,18447:10,18448:10,18449:10,18452:10,18453:10,18454:10,18455:10,18456:10,18457:10,19526:10,19527:10,19528:10,19529:10,19530:10,19531:10,19532:10,19533:10,20427:10,20428:10,15198:20,15199:20,15200:20,16335:20,18428:20,18442:20,18443:20,18444:20,19510:20,19511:20,19512:20,19513:20,19514:20,19515:20,19516:20,19517:20,19518:20,19519:20,19520:20,19521:20,19522:20,19523:20,19524:20,19525:20,19534:20,19535:20,19536:20,19537:20,19538:20,19539:20,19540:20,19541:20,19578:20,19580:20,19581:20,19582:20,19583:20,19584:20,19587:20,19589:20,19590:20,19595:20,19596:20,19597:20,20426:20,20429:20,20431:20,20439:20,20442:20,20444:20,32809:20,32810:20,32811:20,32812:20,32813:20,32814:20,32816:20,32817:20,32818:20,32819:20,32820:20,32821:20,32980:20,32989:20,32997:20,35166:20,35167:20,35168:20,35169:20,35170:20,35171:20,35172:20,35173:20,35174:20,35175:20,35176:20,35177:20,35178:20,35179:20,35180:20,16442:30,16450:30,16456:30,16467:30,16475:30,16479:30,16534:30,16543:30,16552:30,16564:30,16567:30,16579:30,17579:30,17593:30,17603:30,17625:30,19542:30,19543:30,19544:30,19545:30,19546:30,19547:30,19548:30,19549:30,19550:30,19551:30,19552:30,19553:30,19554:30,19555:30,19556:30,19557:30,19558:30,19559:30,19560:30,19561:30,19562:30,19563:30,19564:30,19565:30,20430:30,20437:30,20438:30,20440:30,20441:30,20443:30,21565:30,21566:30,21567:30,21568:30,22873:30,22875:30,22878:30,22880:30,22881:30,22882:30,22883:30,22887:30,23273:30,23293:30,23295:30,23296:30,23299:30,23301:30,23302:30,23304:30,29465:30,29466:30,29467:30,29468:30,29469:30,29470:30,29471:30,29472:30,29597:30,29603:30,29608:30,29614:30,34129:30,35906:30,19566:40,19567:40,19568:40,19569:40,19570:40,19571:40,19572:40,19573:40,20425:40,20434:40,22651:40,22672:40,22673:40,22676:40,22740:40,22741:40,22747:40,22748:40,22749:40,22750:40,22752:40,22753:40,19505:60,19506:60,30497:60,30498:60",
	["CurrencyItems.Winterfin Clam"]="17057:1,17058:1,38350:1,37449:5,38351:5,37464:20,36783:30,37462:50,37463:50,36784:100,37461:100",
	["CurrencyItems.Wintergrasp Mark of Honor"]="",
})
