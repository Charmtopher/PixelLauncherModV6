.class public Landroid/support/v4/widget/c;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field public gravity:I

.field me:F

.field mf:Z

.field mg:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 2329
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2315
    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v4/widget/c;->gravity:I

    .line 2330
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2321
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2315
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/c;->gravity:I

    .line 2323
    sget-object v1, Landroid/support/v4/widget/DrawerLayout;->km:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2324
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/v4/widget/c;->gravity:I

    .line 2325
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2326
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/widget/c;)V
    .locals 1

    .line 2338
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2315
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/c;->gravity:I

    .line 2339
    iget p1, p1, Landroid/support/v4/widget/c;->gravity:I

    iput p1, p0, Landroid/support/v4/widget/c;->gravity:I

    .line 2340
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 2343
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2315
    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v4/widget/c;->gravity:I

    .line 2344
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 2347
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2315
    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v4/widget/c;->gravity:I

    .line 2348
    return-void
.end method
