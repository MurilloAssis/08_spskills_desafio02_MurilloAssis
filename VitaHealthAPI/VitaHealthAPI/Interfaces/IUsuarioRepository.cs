using VitaHealthAPI.Domains;

namespace VitaHealthAPI.Interfaces
{
    public interface IUsuarioRepository
    {
        Usuario Login(string email, string senha);
        void CadastrarUsuario(Usuario usuario);
    }
}
