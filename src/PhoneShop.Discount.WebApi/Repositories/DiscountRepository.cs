using PhoneShop.Discount.WebApi.Entities;
using PhoneShop.Discount.WebApi.Repositories.Interfaces;

namespace PhoneShop.Discount.WebApi.Repositories;

public class DiscountRepository : IDiscountRepository
{
    private readonly IConfiguration _configuration;

    public DiscountRepository(IConfiguration configuration)
    {
        _configuration = configuration ?? throw new ArgumentNullException(nameof(configuration));
    }

    public Task<bool> CreateDiscount(Coupon coupon)
    {
        throw new NotImplementedException();
    }

    public Task<bool> DeleteDiscount(string productName)
    {
        throw new NotImplementedException();
    }

    public Task<Coupon> GetDiscount(string productName)
    {
        throw new NotImplementedException();
    }

    public Task<bool> UpdateDiscount(Coupon coupon)
    {
        throw new NotImplementedException();
    }
}
