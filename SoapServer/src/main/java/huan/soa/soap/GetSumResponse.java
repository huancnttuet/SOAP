package huan.soa.soap;

import javax.xml.bind.annotation.*;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "",propOrder = {
        "result",
        "error"
})
@XmlRootElement(name = "getSumResponse")
public class GetSumResponse {
    protected int result;
    @XmlElement(required = true)
    protected String error;

    public int getResult() {
        return result;
    }

    public String getError() {
        return error;
    }

    public void setResult(int result) {
        this.result = result;
    }

    public void setError(String error) {
        this.error = error;
    }
}
