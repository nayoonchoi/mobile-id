package mip.mva.sp.comm.exception;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

import mip.mva.sp.comm.enums.MipErrorEnum;

/**
 * @Project     : 모바일 운전면허증 서비스 구축 사업
 * @PackageName : mip.mva.sp.comm.exception
 * @FileName    : OacxException.java
 * @Author      : Min Gi Ju
 * @Date        : 2022. 6. 7.
 * @Description : OAXC Exception
 * ==================================================
 * DATE            AUTHOR           NOTE
 * ==================================================
 * 2022. 6. 7.    Min Gi Ju        최초생성
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class OacxException extends Exception {

	private static final long serialVersionUID = 1L;

	@JsonProperty("result-code")
	private String resultCode;
	private String reqTxId;
	private int errorCd;
	@JsonProperty("client-message")
	private String errorMessage;
	@JsonProperty("system-message")
	private String systemMessage;

	public OacxException(Integer errorCd, String errorMessage) {
		this.errorCd = errorCd;
		this.errorMessage = errorMessage;
	}

	public OacxException(MipErrorEnum mipErrorEnum) {
		this.resultCode = "error";
		this.errorCd = mipErrorEnum.getCode();
		this.errorMessage = mipErrorEnum.getMsg();
	}

	public OacxException(MipErrorEnum mipErrorEnum, String reqTxId) {
		this.resultCode = "error";
		this.reqTxId = reqTxId;
		this.errorCd = mipErrorEnum.getCode();
		this.errorMessage = mipErrorEnum.getMsg();
	}

	public OacxException(MipErrorEnum mipErrorEnum, String reqTxId, String reason) {
		this.resultCode = "error";
		this.reqTxId = reqTxId;
		this.errorCd = mipErrorEnum.getCode();
		this.errorMessage = mipErrorEnum.getMsg() + " : " + reason;
	}

	public String getResultCode() {
		return resultCode;
	}

	public void setResultCode(String resultCode) {
		this.resultCode = resultCode;
	}

	public String getReqTxId() {
		return reqTxId;
	}

	public void setReqTxId(String reqTxId) {
		this.reqTxId = reqTxId;
	}

	public int getErrorCd() {
		return errorCd;
	}

	public void setErrorCd(int errorCd) {
		this.errorCd = errorCd;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	public String getSystemMessage() {
		return systemMessage;
	}

	public void setSystemMessage(String systemMessage) {
		this.systemMessage = systemMessage;
	}

}
