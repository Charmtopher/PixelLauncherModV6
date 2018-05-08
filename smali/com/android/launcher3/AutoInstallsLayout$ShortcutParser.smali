.class public Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/AutoInstallsLayout$TagParser;


# instance fields
.field private final mIconRes:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/android/launcher3/AutoInstallsLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/AutoInstallsLayout;Landroid/content/res/Resources;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput-object p2, p0, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    .line 416
    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 8

    .line 420
    const-string v0, "title"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v0

    .line 421
    const-string v2, "icon"

    invoke-static {p1, v2, v1}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeResourceValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v1

    .line 423
    const-wide/16 v2, -0x1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->parseIntent(Landroid/content/res/XmlResourceParser;)Landroid/content/Intent;

    move-result-object p1

    .line 429
    if-nez p1, :cond_1

    .line 430
    return-wide v2

    .line 433
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 434
    if-nez v4, :cond_2

    .line 436
    return-wide v2

    .line 440
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v2, v2, Lcom/android/launcher3/AutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v2

    .line 441
    iget-object v3, p0, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v3, v3, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v5, "icon"

    .line 442
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v4, v6, v7}, Lcom/android/launcher3/graphics/LauncherIcons;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;I)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/graphics/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 441
    invoke-static {v4}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 443
    invoke-virtual {v2}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 445
    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v2, v2, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v3, "iconPackage"

    iget-object v4, p0, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v2, v2, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v3, "iconResource"

    iget-object v4, p0, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->mIconRes:Landroid/content/res/Resources;

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const/high16 v1, 0x10200000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 450
    iget-object v1, p0, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout$ShortcutParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v2, v2, Lcom/android/launcher3/AutoInstallsLayout;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/launcher3/AutoInstallsLayout;->addShortcut(Ljava/lang/String;Landroid/content/Intent;I)J

    move-result-wide v0

    return-wide v0

    .line 425
    :cond_3
    :goto_0
    return-wide v2
.end method

.method protected parseIntent(Landroid/content/res/XmlResourceParser;)Landroid/content/Intent;
    .locals 3

    .line 455
    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 456
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 458
    :cond_1
    :goto_0
    return-object v1
.end method
