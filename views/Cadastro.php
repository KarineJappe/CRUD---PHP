    <div class="imagem-fundo layout-cadastro">
        <div class="container-fluid" >
            <div class="row">
                <div class="offset-md-1 col-md-11">
                    <h1 class="titulo">Cadastro de Veículos</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <form id="cadastro" action="?controller=veiculo&acao=cadastroVeiculoAc" method="POST" class="cor-form">
                        <div class="form-row">
                            <div class="form-group col-md-6">    
                                <label for="nroChassi">Número Chassi:</label>
                                <input type="text" class="form-control" name="nroChassi" maxlength="17" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="marca">Marca:</label>
                                <input type="text" class="form-control" name="marca" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="modelo">Modelo:</label>
                                <input type="text" class="form-control" name="modelo" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="ano">Ano:</label>
                                <input type="text" class="form-control" name="ano" maxlength="4" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="placa">Placa:</label>
                                <input type="text" class="form-control" id="placa" name="placa" minlength="7" maxlength="7" required>
                            </div>
                            <div class="form-check form-check-inline col-md-5">
                                <?php
                                    require_once("controllers/Caracteristica.php");
                                    $caracteristica = new CaracteristicaController();
                                    $array = $caracteristica -> listarCaracteristica();
                                foreach($array as $caracteristica){ ?>
                                <input class="form-check-input" name="caracteristica[]" type="checkbox" value="<?=$caracteristica['id']?>">
                                <label class="form-check-label"for=""><?=$caracteristica["nome"]?></label>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="offset-10 col-md-2">
                                <button type="submit" class="btn btn-danger">Cadastrar</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
