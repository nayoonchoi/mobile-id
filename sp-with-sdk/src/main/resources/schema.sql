/* 서비스 */
DROP TABLE tb_service IF EXISTS;
CREATE TABLE tb_service (
  svcCode varchar(50) NOT NULL, /* 서비스코드 */
  presentType integer NOT NULL DEFAULT 1, /* 제공유형 */
  encryptType integer NOT NULL DEFAULT 2, /* 암호화유형 */
  keyType integer NOT NULL DEFAULT 2, /* 키유형 */
  authType varchar(50) DEFAULT NULL, /* 인증유형 */
  spName varchar(100) NOT NULL, /* 서비스명 */
  serviceName varchar(100) NOT NULL, /* SP이름 */
  attrList varchar(100) DEFAULT NULL, /* 값 자체를 제출하는 영지식 증명 항목 리스트. ["zkpaddr","zkpsex","zkpasort"] 과 같이 JSON 배열로 정의해야 함 - zkpaddr: 주소(동 까지) - zkpsex: 성별 - zkpasort: 면허종별 */
  predList varchar(100) DEFAULT NULL, /* 검증을 위한 조건을 제시하여 조건에 맞음을 검증하는 영지식 증명 항목 리스트 [{"zkpbirth":{"type":"LE","value":"19"}}] 과 같이 JSON 배열로 정의해야 함 현재는 zkpbirth(생년월일) 밖에 없음 */
  callBackUrl varchar(100) DEFAULT NULL, /* 콜백URL */
  regDt timestamp NOT NULL DEFAULT current_timestamp(), /* 등록일시 */
  udtDt timestamp NULL DEFAULT NULL, /* 수정일시 */
  PRIMARY KEY (svcCode)
);

/* 거래정보 */
DROP TABLE tb_trx_info IF EXISTS;
CREATE TABLE tb_trx_info (
  trxCode varchar(50) NOT NULL, /* 거래코드 */
  svcCode varchar(50) NOT NULL, /* 서비스코드 */
  mode varchar(50) NOT NULL, /* 모드 */
  deviceId varchar(100) DEFAULT NULL, /* 기기ID */
  branchName varchar(100) DEFAULT NULL, /* 지점명 */
  nonce varchar(100) DEFAULT NULL, /* nonce(presentType=1) */
  zkpNonce varchar(100) DEFAULT NULL, /* zkpNonce(presentType=2) */
  vpVerifyResult varchar(1) NOT NULL DEFAULT 'N', /* VP 검증 결과 여부 */
  vp CHARACTER VARYING DEFAULT NULL, /* VP Data */
  trxStsCode varchar(4) NOT NULL DEFAULT '0001', /* 거래상태코드(0001: 서비스요청, 0002: profile요청, 0003: VP 검증요청, 0004: VP 검증완료) */
  profileSendDt timestamp NULL DEFAULT NULL, /* profile 송신일시(M310) */
  imgSendDt timestamp NULL DEFAULT NULL, /* 이미지 송신일시(M320) */
  vpReceptDt timestamp NULL DEFAULT NULL, /* VP 수신일시(M400) */
  errorCn varchar(4000) DEFAULT NULL, /* 오류 내용 */
  regDt timestamp NOT NULL DEFAULT current_timestamp(), /* 등록일시 */
  udtDt timestamp NULL DEFAULT NULL, /* 수정일시 */
  PRIMARY KEY (trxCode)
);
