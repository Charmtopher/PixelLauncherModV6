.class public abstract Lcom/google/android/apps/nexuslauncher/qsb/a;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/Insettable;


# static fields
.field private static final zJ:Landroid/graphics/Rect;


# instance fields
.field protected Aa:Z

.field private final Ab:I

.field private final Ac:I

.field private final Ad:I

.field private final Ae:Lcom/android/launcher3/util/TransformingTouchDelegate;

.field protected final mIsRtl:Z

.field protected mShadowBitmap:Landroid/graphics/Bitmap;

.field protected final zK:Landroid/text/TextPaint;

.field protected final zL:Landroid/graphics/Paint;

.field protected final zM:Landroid/graphics/Paint;

.field protected final zN:Lcom/android/launcher3/graphics/NinePatchDrawHelper;

.field protected final zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

.field protected final zP:I

.field protected final zQ:I

.field protected final zR:I

.field protected zS:Landroid/graphics/Bitmap;

.field protected zT:I

.field protected zU:I

.field protected zV:F

.field protected zW:Landroid/view/View;

.field protected zX:Ljava/lang/String;

.field protected zY:Z

.field protected zZ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zJ:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/qsb/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zK:Landroid/text/TextPaint;

    .line 71
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zL:Landroid/graphics/Paint;

    .line 72
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zM:Landroid/graphics/Paint;

    .line 73
    new-instance p2, Lcom/android/launcher3/graphics/NinePatchDrawHelper;

    invoke-direct {p2}, Lcom/android/launcher3/graphics/NinePatchDrawHelper;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zN:Lcom/android/launcher3/graphics/NinePatchDrawHelper;

    .line 87
    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zZ:I

    .line 105
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    .line 106
    invoke-virtual {p0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 108
    nop

    .line 109
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b00bc

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->Ab:I

    .line 110
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b00ba

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zR:I

    .line 111
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b00b8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zP:I

    .line 112
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b00b7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zQ:I

    .line 113
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zK:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b00b9

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 114
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b00bf

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->Ac:I

    .line 115
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b00c1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->Ad:I

    .line 116
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mIsRtl:Z

    .line 117
    new-instance p1, Lcom/android/launcher3/util/TransformingTouchDelegate;

    invoke-direct {p1, p0}, Lcom/android/launcher3/util/TransformingTouchDelegate;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->Ae:Lcom/android/launcher3/util/TransformingTouchDelegate;

    .line 118
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->Ae:Lcom/android/launcher3/util/TransformingTouchDelegate;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 119
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zM:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    return-void
.end method

.method private aB(I)Landroid/graphics/Bitmap;
    .locals 3

    .line 318
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    .line 319
    int-to-float v0, v0

    const v1, 0x3c2aaaab

    mul-float/2addr v1, v0

    const v2, 0x3caaaaab

    mul-float/2addr v0, v2

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->c(FFI)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private du()V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zW:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->Ae:Lcom/android/launcher3/util/TransformingTouchDelegate;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 453
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->requestLayout()V

    .line 454
    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Bitmap;)I
    .locals 1

    .line 342
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dn()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    .line 343
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method protected final a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 10

    .line 291
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 292
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dn()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 293
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v2, v0

    .line 294
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    .line 295
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dq()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dq()I

    move-result v0

    sub-int/2addr v3, v0

    .line 300
    :goto_0
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zN:Lcom/android/launcher3/graphics/NinePatchDrawHelper;

    int-to-float v7, v2

    int-to-float v8, v1

    int-to-float v9, v3

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->draw(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;FFF)V

    .line 301
    return-void
.end method

.method public abstract a(Ljava/lang/String;I)V
.end method

.method protected final a(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 3

    .line 355
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zK:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->Ad:I

    int-to-float v1, v1

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 356
    invoke-static {p1, v0, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 357
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 358
    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zX:Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zX:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    const/16 v0, 0x11

    .line 361
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    const v0, 0x800015

    .line 363
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mIsRtl:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->do()I

    move-result v1

    invoke-virtual {p2, v1, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 366
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->do()I

    move-result v1

    invoke-virtual {p2, v2, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 369
    :cond_2
    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 370
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 371
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 372
    return-void
.end method

.method protected abstract aA(I)I
.end method

.method protected final aC(I)V
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    .line 460
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;

    .line 461
    invoke-virtual {v1, p1, v0}, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->C(II)V

    .line 462
    return-void
.end method

.method public final ay(I)V
    .locals 1

    .line 182
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zT:I

    if-eq v0, p1, :cond_0

    .line 183
    iput p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zT:I

    .line 184
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 185
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->invalidate()V

    .line 187
    :cond_0
    return-void
.end method

.method public final az(I)V
    .locals 4

    .line 190
    iput p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zU:I

    .line 191
    iget p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zU:I

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 192
    move p1, v2

    goto :goto_0

    .line 191
    :cond_0
    nop

    .line 192
    move p1, v1

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zS:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mShadowBitmap:Landroid/graphics/Bitmap;

    if-ne v0, v3, :cond_1

    .line 193
    move v1, v2

    goto :goto_1

    .line 192
    :cond_1
    nop

    .line 193
    :goto_1
    if-eqz p1, :cond_2

    if-nez v1, :cond_3

    .line 196
    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zS:Landroid/graphics/Bitmap;

    .line 197
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->invalidate()V

    .line 199
    :cond_3
    return-void
.end method

.method protected final c(FFI)Landroid/graphics/Bitmap;
    .locals 3

    .line 326
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dn()I

    move-result v0

    .line 327
    add-int/lit8 v1, v0, 0x14

    .line 329
    new-instance v2, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;

    invoke-direct {v2, p3}, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;-><init>(I)V

    .line 330
    iput p1, v2, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->shadowBlur:F

    .line 331
    iput p2, v2, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->keyShadowDistance:F

    .line 332
    iget p1, v2, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->ambientShadowAlpha:I

    iput p1, v2, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->keyShadowAlpha:I

    .line 333
    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->createPill(II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 335
    sget-boolean p2, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-eqz p2, :cond_0

    .line 336
    sget-object p2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 338
    :cond_0
    return-object p1
.end method

.method protected c(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 456
    return-void
.end method

.method protected createSettingsIntent()Landroid/content/Intent;
    .locals 1

    .line 507
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final dj()Landroid/content/SharedPreferences;
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dk()V

    .line 151
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 152
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->du()V

    .line 153
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->c(Landroid/content/SharedPreferences;)V

    .line 154
    return-object v0
.end method

.method protected final dk()V
    .locals 1

    .line 158
    const v0, 0x7f0e0040

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zW:Landroid/view/View;

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zW:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method

.method protected final dl()Landroid/graphics/Bitmap;
    .locals 1

    .line 248
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dm()V

    .line 249
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mShadowBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method final dm()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mShadowBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 254
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zT:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->aB(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 256
    :cond_0
    return-void
.end method

.method protected final dn()I
    .locals 2

    .line 347
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected final do()I
    .locals 2

    .line 351
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->Aa:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zR:I

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zR:I

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zP:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected final dp()Z
    .locals 1

    .line 375
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zY:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->Aa:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final dq()I
    .locals 2

    .line 379
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->Aa:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dr()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zQ:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final dr()I
    .locals 2

    .line 383
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->Aa:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zX:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zK:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zP:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zR:I

    add-int/2addr v0, v1

    return v0

    .line 386
    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zR:I

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dm()V

    .line 261
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mShadowBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v10, p1

    invoke-virtual {v0, v1, v10}, Lcom/google/android/apps/nexuslauncher/qsb/a;->a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 263
    iget-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/a;->Aa:Z

    const/4 v11, 0x1

    if-eqz v1, :cond_4

    .line 264
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zS:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 265
    iget v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zT:I

    iget v2, v0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zU:I

    if-ne v1, v2, :cond_0

    .line 266
    move v1, v11

    goto :goto_0

    .line 265
    :cond_0
    const/4 v1, 0x0

    .line 266
    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mShadowBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 267
    :cond_1
    iget v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zU:I

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->aB(I)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zS:Landroid/graphics/Bitmap;

    .line 269
    :cond_2
    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zS:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/nexuslauncher/qsb/a;->a(Landroid/graphics/Bitmap;)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingTop()I

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dn()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    iget-boolean v4, v0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mIsRtl:Z

    if-eqz v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dr()I

    move-result v1

    :goto_2
    add-int/2addr v5, v1

    goto :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dr()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_2

    :goto_3
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zN:Lcom/android/launcher3/graphics/NinePatchDrawHelper;

    int-to-float v6, v4

    int-to-float v7, v2

    int-to-float v8, v5

    move-object v2, v1

    move-object v4, v10

    move v5, v6

    move v6, v7

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->draw(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;FFF)V

    .line 271
    :cond_4
    iget v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zV:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zW:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    .line 272
    iget-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mIsRtl:Z

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingLeft()I

    move-result v1

    goto :goto_4

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dr()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingTop()I

    move-result v12

    iget-boolean v2, v0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mIsRtl:Z

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dr()I

    move-result v3

    add-int/2addr v2, v3

    :goto_5
    move v13, v2

    goto :goto_6

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_5

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingBottom()I

    move-result v3

    sub-int v14, v2, v3

    sub-int v2, v14, v12

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v15, v2, v3

    iget v2, v0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zV:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v9, v2

    iget-boolean v2, v0, Lcom/google/android/apps/nexuslauncher/qsb/a;->Aa:Z

    if-nez v2, :cond_7

    add-int v2, v1, v9

    int-to-float v3, v2

    add-int v2, v12, v9

    int-to-float v4, v2

    sub-int v2, v13, v9

    int-to-float v5, v2

    sub-int v2, v14, v9

    add-int/2addr v2, v11

    int-to-float v6, v2

    iget-object v8, v0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zM:Landroid/graphics/Paint;

    move-object v2, v10

    move v7, v15

    move-object/from16 v16, v8

    move v8, v15

    move/from16 v17, v9

    move-object/from16 v9, v16

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_7
    move/from16 v17, v9

    :goto_7
    add-int v1, v1, v17

    int-to-float v3, v1

    add-int v12, v12, v17

    int-to-float v4, v12

    sub-int v13, v13, v17

    int-to-float v5, v13

    sub-int v14, v14, v17

    add-int/2addr v14, v11

    int-to-float v6, v14

    iget-object v9, v0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zL:Landroid/graphics/Paint;

    move-object v2, v10

    move v7, v15

    move v8, v15

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 274
    :cond_8
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 275
    return-void
.end method

.method protected final ds()V
    .locals 9

    .line 392
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 393
    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    .line 394
    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 395
    iget-boolean v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mIsRtl:Z

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dq()I

    move-result v2

    .line 396
    move v4, v2

    goto :goto_0

    .line 395
    :cond_0
    nop

    .line 396
    move v4, v8

    :goto_0
    iget-boolean v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mIsRtl:Z

    if-eqz v2, :cond_1

    .line 397
    move v6, v8

    goto :goto_1

    .line 396
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dq()I

    move-result v2

    .line 397
    move v6, v2

    :goto_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/RippleDrawable;->setLayerInset(IIIII)V

    .line 398
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 401
    invoke-virtual {v1}, Landroid/graphics/drawable/RippleDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 402
    const/4 v2, 0x0

    iget v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->Ac:I

    iget v6, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->Ac:I

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/RippleDrawable;->setLayerInset(IIIII)V

    .line 403
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zW:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 404
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zW:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dr()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 405
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mIsRtl:Z

    if-eqz v0, :cond_2

    .line 406
    move v0, v8

    goto :goto_2

    .line 405
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dr()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zR:I

    sub-int/2addr v0, v1

    .line 406
    :goto_2
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mIsRtl:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dr()I

    move-result v1

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zR:I

    sub-int/2addr v1, v2

    goto :goto_3

    .line 407
    :cond_3
    move v1, v8

    :goto_3
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zW:Landroid/view/View;

    invoke-virtual {v2, v0, v8, v1, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 408
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zW:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 409
    return-void
.end method

.method public dt()Z
    .locals 1

    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method protected dv()Z
    .locals 5

    .line 496
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/content/ClipboardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 497
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->createSettingsIntent()Landroid/content/Intent;

    move-result-object v2

    .line 498
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 499
    return v1

    .line 501
    :cond_2
    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/b;

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/apps/nexuslauncher/qsb/b;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/a;Ljava/lang/String;Landroid/content/Intent;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    .line 503
    return v0
.end method

.method public dw()I
    .locals 1

    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method public final h(F)V
    .locals 2

    .line 202
    nop

    .line 203
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 202
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zV:F

    .line 204
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zL:Landroid/graphics/Paint;

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zV:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 205
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zL:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 206
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zL:Landroid/graphics/Paint;

    const v0, -0x423e3a

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    return-void
.end method

.method protected final j(Ljava/lang/String;)V
    .locals 3

    .line 429
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const p1, 0x10008000

    .line 430
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.google.android.googlequicksearchbox"

    .line 431
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 429
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    return-void

    .line 432
    :catch_0
    move-exception p1

    .line 434
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object p1

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.googlequicksearchbox"

    const-string v2, ".SearchActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 434
    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->showAppDetailsForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 438
    return-void
.end method

.method public abstract k(Ljava/lang/String;)V
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 124
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 125
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dj()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->Ae:Lcom/android/launcher3/util/TransformingTouchDelegate;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zW:Landroid/view/View;

    iput-object v1, v0, Lcom/android/launcher3/util/TransformingTouchDelegate;->mDelegateView:Landroid/view/View;

    .line 127
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 420
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zW:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 421
    new-instance p1, Lcom/google/android/apps/nexuslauncher/qsb/d;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/d;-><init>(Landroid/content/Context;)V

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/qsb/d;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p1, "com.google.android.googlequicksearchbox"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_0
    const-string v1, "voice_interaction_service"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "com.google.android.googlequicksearchbox"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/qsb/d;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "com.google.android.googlequicksearchbox"

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v3

    :goto_1
    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->showVoiceSession(Landroid/os/IBinder;Landroid/os/Bundle;I)Z

    move-result v3

    :goto_2
    if-nez v3, :cond_4

    .line 422
    const-string p1, "android.intent.action.VOICE_ASSIST"

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->j(Ljava/lang/String;)V

    .line 425
    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 178
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 179
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 164
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 166
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zW:Landroid/view/View;

    sget-object p2, Lcom/google/android/apps/nexuslauncher/qsb/a;->zJ:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 167
    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mIsRtl:Z

    if-eqz p1, :cond_0

    .line 168
    sget-object p1, Lcom/google/android/apps/nexuslauncher/qsb/a;->zJ:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p3, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->Ac:I

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 170
    :cond_0
    sget-object p1, Lcom/google/android/apps/nexuslauncher/qsb/a;->zJ:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget p3, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->Ac:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 172
    :goto_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->Ae:Lcom/android/launcher3/util/TransformingTouchDelegate;

    sget-object p2, Lcom/google/android/apps/nexuslauncher/qsb/a;->zJ:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sget-object p3, Lcom/google/android/apps/nexuslauncher/qsb/a;->zJ:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    sget-object p4, Lcom/google/android/apps/nexuslauncher/qsb/a;->zJ:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    sget-object p5, Lcom/google/android/apps/nexuslauncher/qsb/a;->zJ:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p1, Lcom/android/launcher3/util/TransformingTouchDelegate;->mBounds:Landroid/graphics/RectF;

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    int-to-float p5, p5

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p1, Lcom/android/launcher3/util/TransformingTouchDelegate;->mTouchCheckBounds:Landroid/graphics/RectF;

    iget-object p3, p1, Lcom/android/launcher3/util/TransformingTouchDelegate;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p2, p1, Lcom/android/launcher3/util/TransformingTouchDelegate;->mTouchCheckBounds:Landroid/graphics/RectF;

    iget p3, p1, Lcom/android/launcher3/util/TransformingTouchDelegate;->mTouchExtension:F

    neg-float p3, p3

    iget p1, p1, Lcom/android/launcher3/util/TransformingTouchDelegate;->mTouchExtension:F

    neg-float p1, p1

    invoke-virtual {p2, p3, p1}, Landroid/graphics/RectF;->inset(FF)V

    .line 173
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 489
    if-eq p1, p0, :cond_0

    .line 490
    const/4 p1, 0x0

    return p1

    .line 492
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dv()Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 217
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zO:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 218
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 219
    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->aA(I)I

    move-result v1

    .line 221
    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    div-int v2, v1, v2

    .line 222
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    const v3, 0x3f6b851f    # 0.92f

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 223
    sub-int/2addr v2, v0

    .line 225
    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 226
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 227
    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/nexuslauncher/qsb/a;->setMeasuredDimension(II)V

    .line 230
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 231
    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 232
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/apps/nexuslauncher/qsb/a;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 236
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-gt v2, v0, :cond_0

    .line 237
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 240
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x2

    .line 241
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 230
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 243
    :cond_1
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 442
    const-string v0, "opa_enabled"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->du()V

    return-void

    .line 444
    :cond_0
    const-string v0, "pref_persistent_flags"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 445
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->c(Landroid/content/SharedPreferences;)V

    .line 447
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_6

    .line 133
    const v0, 0x7f0e003f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 134
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mIsRtl:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dt()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->Ab:I

    sub-int/2addr v0, v1

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 136
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_1

    .line 137
    move v2, v3

    goto :goto_2

    .line 136
    :cond_1
    nop

    .line 137
    :goto_2
    goto :goto_5

    .line 138
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->dt()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->Ab:I

    :goto_3
    int-to-float v0, v0

    goto :goto_4

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_3

    .line 139
    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_4

    .line 142
    move v2, v3

    goto :goto_5

    .line 139
    :cond_4
    nop

    .line 142
    :goto_5
    if-eqz v2, :cond_5

    .line 143
    goto :goto_6

    .line 144
    :cond_5
    const/4 v3, 0x2

    :goto_6
    iput v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->zZ:I

    .line 146
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 0

    .line 211
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->requestLayout()V

    .line 212
    return-void
.end method
