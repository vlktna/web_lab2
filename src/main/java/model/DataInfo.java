package model;

import java.io.Serializable;
import java.util.Date;

public class DataInfo implements Serializable {

    private final Double valueX;
    private final Double valueY;
    private final Double valueR;
    private final String result;
    private final String time;
    private final long scriptTime;

    public DataInfo(Double valueX, Double valueY, Double valueR, String result, long startTime) {
        this.valueY = valueY;
        this.valueX = valueX;
        this.valueR = valueR;
        this.result = result;
        this.time = String.valueOf(new Date());
        this.scriptTime = startTime - System.currentTimeMillis();
    }

    public Double getValueX() {
        return valueX;
    }

    public Double getValueY() {
        return valueY;
    }

    public Double getValueR() {
        return valueR;
    }

    public String getResult() {
        return result;
    }

    public String getTime() {
        return time;
    }

    public long getScriptTime() {
        return scriptTime;
    }
}
