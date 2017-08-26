using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(NETPyme.Startup))]
namespace NETPyme
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
