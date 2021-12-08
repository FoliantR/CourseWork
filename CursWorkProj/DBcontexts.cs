using Microsoft.EntityFrameworkCore;


namespace CursWorkProj
{
    internal class DBcontexts : DbContext      
    {
        public DbSet<Customer> Customer { get; set; }      
        public DbSet<Cemetery> Cemetery { get; set; }
        public DbSet<Grave> Grave { get; set; }
        public DbSet<Coffin> Coffin { get; set; }
        public DbSet<FuneralProcession> FuneralProcession { get; set; }
        public DBcontexts()
        {
            Database.EnsureCreated();      
        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseNpgsql("Host=localhost;Port=5432;Database=curswork;Username=postgres;Password=ee332211");
        }
    }
}

