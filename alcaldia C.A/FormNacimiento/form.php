
   <form action="" id="datos">
                    <p>
                        <label for="names">Nombres</label>
                        <input type="text" name="names" id="names" placeholder="Rosa Isabel" required>
                    </p>
                    <p>
                        <label for="surnames">Apellidos</label>
                        <input type="text" name="surnames" id="surnames" placeholder="Carcamo Pla" required>
                    </p>
                    <p>
                        <label for="start">Fecha nacimiento:</label>

                        <span class="fecha"></span><input type="date" id="start" name="trip-start"
                        value="aaaa-mm-dd"
                             min="1950-01-01" max="2025-12-31" required></span>

                    </p> 
                    <p>
                        <label for="surnames">Tipo de partida</label>
                        <select name="tipo_certificado" class="select" required="required">
                            <option value="" selected>Selecione</option>
                            <option value="Normal">Normal</option>
                            <option value="Autentico">Autentico</option>
                            
                          </select>
                        
                    </p>
                    <p>
                        <label for="fullname">Nombre Madre</label>
                        <input type="text" name="fullname_madre" id="fullname" placeholder="Nombre completo" required>
                    </p>
                    <p>
                        <label for="fullname">Nombre Padre</label>
                        <input type="text" name="fullname_padre" id="fullname" placeholder="Nombre completo" required>
                    </p>
                    <p>
                        <label for="start">Dia de retiro:</label>

                        <span class="fecha" id="date"></span><input type="text" name="cita" 
                        value="dd/mm/aaaa"
                          min="2022-01-01" max="2025-12-31" ></span>
                    </p>
                    <p class="">
                        <label for="surnames">Hora de retiro</label>
                        <select name="hora_retiro" class="select" required="required" >
                            <option value="" selected>Selecione</option>
                            <option value="9:00 AM">9:00 AM</option>
                            <option value="10:00 AM">10:00 AM</option>
                            <option value="11:00 AM">11:00 AM</option>
                            <option value="1:00 PM">1:00 PM</option>
                            <option value="2:00 PM">2:00 PM</option>
                            <option value="3:00 PM">3:00 PM</option>
                            <option value="4:00 PM">4:00 PM</option>
                            
                          </select>
                    </p>
                    <p>
                     <label for="tel">Telefono</label>
                      <input id="phone" type="tel" name="phone" pattern="^[0-9]{8}$" required/>
                    </p>
                      <div class="questions">
                        <div class="questions__question" >
                          <input type="radio" name="answer" id="answer-1">
                          <label for="answer-1" data-question-number="">Email</label>
                        </div>
                        <div class="questions__question">
                          <input type="radio" name="answer" id="answer-2" > 
                          <label for="answer-2" data-question-number="">DUI</label>
                        </div>
                      </div>
                <p id="div2" style="display:none">
                    <label for="email">Correo electronico</label>
                    <input type="email" name="email" id="email"  placeholder="elisa12@gmail.com">
                </p>
                
                <p id="div1" style="display:none">
                    <label for="dui">DUI</label>
                    <input type="text" name="dui" id="dui"  placeholder="00000000-0" >
                </p>

                    <p class="block">
                        <button type="submit" name="guardar" id="btnEnviarForm">Enviar</button>
                    </p>
                    <?php echo $mensaje ?>
                </form>