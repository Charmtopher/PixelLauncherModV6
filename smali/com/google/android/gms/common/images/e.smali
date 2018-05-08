.class public abstract Lcom/google/android/gms/common/images/e;
.super Ljava/lang/Object;


# instance fields
.field final JX:Lcom/google/android/gms/common/images/f;

.field protected JY:I


# virtual methods
.method protected abstract D(Z)V
.end method

.method final a(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-static {p2}, Lcom/google/android/gms/common/internal/t;->w(Ljava/lang/Object;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/images/e;->D(Z)V

    return-void
.end method

.method final y(Landroid/content/Context;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/images/e;->JY:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/common/images/e;->JY:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/images/e;->D(Z)V

    return-void
.end method
