using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MoneyBMineWP.Startup))]
namespace MoneyBMineWP
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
