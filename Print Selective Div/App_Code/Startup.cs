using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Print_Selective_Div.Startup))]
namespace Print_Selective_Div
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
