/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import static java.time.temporal.ChronoUnit.DAYS;
import java.util.Date;

/**
 *
 * @author DAW-B
 */
public class Reserva {
    private Date fecha_entrada;
    private Date fecha_salida;
    private int num_habitaciones;
    private String tipo_reserva;

    public Reserva(Date fecha_entrada, Date fecha_salida, int num_habitaciones, String tipo_reserva) {
        this.fecha_entrada = fecha_entrada;
        this.fecha_salida = fecha_salida;
        this.num_habitaciones = num_habitaciones;
        this.tipo_reserva = tipo_reserva;
    }

    public Reserva() {
    }

    public Date getFecha_entrada() {
        return fecha_entrada;
    }

    public void setFecha_entrada(Date fecha_entrada) {
        this.fecha_entrada = fecha_entrada;
    }

    public Date getFecha_salida() {
        return fecha_salida;
    }

    public void setFecha_salida(Date fecha_salida) {
        this.fecha_salida = fecha_salida;
    }

    public int getNum_habitaciones() {
        return num_habitaciones;
    }

    public void setNum_habitaciones(int num_habitaciones) {
        this.num_habitaciones = num_habitaciones;
    }

    public String getTipo_reserva() {
        return tipo_reserva;
    }

    public void setTipo_reserva(String tipo_reserva) {
        this.tipo_reserva = tipo_reserva;
    }
    
    public double getPrecioReserva() {
        int numberOFDays = getDiasReserva();
        switch(this.tipo_reserva) {
            case "normal":
                return 50 * numberOFDays + (50 * numberOFDays * 1.21);
            case "superior":
                return 75 * numberOFDays + (50 * numberOFDays * 1.21);
            default:
                return 0;
        }
    }
    
    public int getDiasReserva() {
        return (int) (DAYS.between(this.fecha_entrada.toInstant(), this.fecha_salida.toInstant()) + 1);
    }
}