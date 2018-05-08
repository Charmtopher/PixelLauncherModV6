.class Lcom/google/android/apps/nexuslauncher/b/b;
.super Lcom/android/launcher3/FastBitmapDrawable$MyConstantState;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/FastBitmapDrawable$MyConstantState;-><init>(Landroid/graphics/Bitmap;I)V

    .line 67
    return-void
.end method


# virtual methods
.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 71
    new-instance v0, Lcom/google/android/apps/nexuslauncher/b/a;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/b/b;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/b/b;->mIconColor:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/nexuslauncher/b/a;-><init>(Landroid/graphics/Bitmap;ILandroid/content/Context;)V

    return-object v0
.end method
