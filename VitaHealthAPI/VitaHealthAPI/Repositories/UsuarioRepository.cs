using VitaHealthAPI.Contexts;
using VitaHealthAPI.Domains;
using VitaHealthAPI.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using VitaHealthAPI.Utils;

namespace VitaHealthAPI.Repositories
{
    public class UsuarioRepository : IUsuarioRepository
    {
        VitaHealthContext ctx = new();

        public void CadastrarUsuario(Usuario usuario)
        {
            ctx.Usuarios.Add(usuario);
            ctx.SaveChanges();
        }

        public Usuario Login(string email, string senha)
        {
            var usuario = ctx.Usuarios.FirstOrDefault(u => u.EmailUsuario == email);

            if (usuario != null)
            {
                if (usuario.SenhaUsuario.Length != 60 && usuario.SenhaUsuario[0].ToString() != "$")
                {
                    string senhaHash = Criptografia.gerarHash(senha);
                    usuario.SenhaUsuario = senhaHash;
                    ctx.Usuarios.Update(usuario);
                    ctx.SaveChanges();
                    return usuario;
                }
                bool confere = Criptografia.compararSenha(senha, usuario.SenhaUsuario);
                if (confere)
                {
                    return usuario;
                }


            }
            return null;
        }
    }
    
}
