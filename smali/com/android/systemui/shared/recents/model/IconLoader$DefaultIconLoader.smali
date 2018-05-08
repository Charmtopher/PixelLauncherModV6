.class public Lcom/android/systemui/shared/recents/model/IconLoader$DefaultIconLoader;
.super Lcom/android/systemui/shared/recents/model/IconLoader;
.source "SourceFile"


# instance fields
.field private final mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private final mDrawableFactory:Landroid/util/IconDrawableFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;Landroid/util/LruCache;)V
    .locals 1

    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/shared/recents/model/IconLoader;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/TaskKeyLruCache;Landroid/util/LruCache;)V

    .line 171
    sget-object p2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 p3, 0x1

    invoke-static {p3, p3, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 172
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 173
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p3, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p3, p0, Lcom/android/systemui/shared/recents/model/IconLoader$DefaultIconLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 174
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/IconLoader$DefaultIconLoader;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 175
    return-void
.end method


# virtual methods
.method protected createBadgedDrawable(Landroid/graphics/drawable/Drawable;ILandroid/app/ActivityManager$TaskDescription;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 185
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    if-eq p2, p3, :cond_0

    .line 186
    iget-object p3, p0, Lcom/android/systemui/shared/recents/model/IconLoader$DefaultIconLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p3, p1, v0}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 188
    :cond_0
    return-object p1
.end method

.method protected getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;ILandroid/app/ActivityManager$TaskDescription;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 194
    iget-object p3, p0, Lcom/android/systemui/shared/recents/model/IconLoader$DefaultIconLoader;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p3, p1, v0, p2}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 179
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/IconLoader$DefaultIconLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method
