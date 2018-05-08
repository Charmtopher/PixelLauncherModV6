.class public Lcom/android/launcher3/FastBitmapDrawable$MyConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public final mIconColor:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 331
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 332
    iput-object p1, p0, Lcom/android/launcher3/FastBitmapDrawable$MyConstantState;->mBitmap:Landroid/graphics/Bitmap;

    .line 333
    iput p2, p0, Lcom/android/launcher3/FastBitmapDrawable$MyConstantState;->mIconColor:I

    .line 334
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 338
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable;

    iget-object v1, p0, Lcom/android/launcher3/FastBitmapDrawable$MyConstantState;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/launcher3/FastBitmapDrawable$MyConstantState;->mIconColor:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0
.end method
