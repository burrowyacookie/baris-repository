using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(opdracht3.Startup))]
namespace opdracht3
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
