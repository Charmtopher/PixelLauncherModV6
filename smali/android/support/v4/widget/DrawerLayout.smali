.class public Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field static final km:[I

.field static final lA:Z

.field private static final lB:Z

.field private static final lz:[I


# instance fields
.field private bO:Z

.field private bP:Landroid/graphics/drawable/Drawable;

.field private dl:Z

.field private kO:F

.field private kP:F

.field private final lC:Landroid/support/v4/widget/b;

.field private lD:F

.field private lE:I

.field private lF:I

.field private lG:F

.field private lH:Landroid/graphics/Paint;

.field final lI:Landroid/support/v4/widget/s;

.field final lJ:Landroid/support/v4/widget/s;

.field private final lK:Landroid/support/v4/widget/e;

.field private final lL:Landroid/support/v4/widget/e;

.field lM:I

.field private lN:I

.field private lO:I

.field private lP:I

.field private lQ:I

.field private lR:Z

.field private lS:Z

.field lT:Ljava/util/List;

.field private lU:Landroid/graphics/drawable/Drawable;

.field private lV:Landroid/graphics/drawable/Drawable;

.field private lW:Ljava/lang/Object;

.field private lX:Landroid/graphics/drawable/Drawable;

.field private lY:Landroid/graphics/drawable/Drawable;

.field private lZ:Landroid/graphics/drawable/Drawable;

.field private mFirstLayout:Z

.field private ma:Landroid/graphics/drawable/Drawable;

.field private final mb:Ljava/util/ArrayList;

.field private mc:Landroid/graphics/Rect;

.field private md:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 105
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010434

    aput v3, v1, v2

    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->lz:[I

    .line 185
    new-array v1, v0, [I

    const v3, 0x10100b3

    aput v3, v1, v2

    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->km:[I

    .line 190
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Landroid/support/v4/widget/DrawerLayout;->lA:Z

    .line 193
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Landroid/support/v4/widget/DrawerLayout;->lB:Z

    return-void
.end method

.method static D(Landroid/view/View;)Z
    .locals 2

    .line 2087
    invoke-static {p0}, Landroid/support/v4/view/n;->g(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2089
    invoke-static {p0}, Landroid/support/v4/view/n;->g(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(Landroid/graphics/drawable/Drawable;I)Z
    .locals 3

    .line 1210
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 1214
    :cond_1
    invoke-static {p1, p2}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;I)Z

    .line 1215
    const/4 p1, 0x1

    return p1

    .line 1211
    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method final A(Landroid/view/View;)Z
    .locals 2

    .line 1470
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/c;

    iget v0, v0, Landroid/support/v4/widget/c;->gravity:I

    .line 1471
    nop

    .line 1472
    invoke-static {p1}, Landroid/support/v4/view/n;->h(Landroid/view/View;)I

    move-result p1

    .line 1471
    invoke-static {v0, p1}, Landroid/support/v4/view/d;->getAbsoluteGravity(II)I

    move-result p1

    .line 1473
    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1475
    return v1

    .line 1477
    :cond_0
    and-int/lit8 p1, p1, 0x5

    if-eqz p1, :cond_1

    .line 1479
    return v1

    .line 1481
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method final B(I)Landroid/view/View;
    .locals 4

    .line 987
    nop

    .line 988
    invoke-static {p0}, Landroid/support/v4/view/n;->h(Landroid/view/View;)I

    move-result v0

    .line 987
    invoke-static {p1, v0}, Landroid/support/v4/view/d;->getAbsoluteGravity(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    .line 989
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 990
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 991
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 992
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->y(Landroid/view/View;)I

    move-result v3

    .line 993
    and-int/lit8 v3, v3, 0x7

    if-ne v3, p1, :cond_0

    .line 994
    return-object v2

    .line 990
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 997
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final B(Landroid/view/View;)V
    .locals 3

    .line 1680
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->A(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/c;

    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/support/v4/widget/c;->me:F

    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v4/widget/c;->mg:I

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    goto :goto_1

    :cond_0
    iget v1, v0, Landroid/support/v4/widget/c;->mg:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/support/v4/widget/c;->mg:I

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->lI:Landroid/support/v4/widget/s;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/s;->c(Landroid/view/View;II)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->lJ:Landroid/support/v4/widget/s;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1681
    return-void

    .line 1680
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a sliding drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final C(Landroid/view/View;)V
    .locals 3

    .line 1749
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->A(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/c;

    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    iput p1, v0, Landroid/support/v4/widget/c;->me:F

    const/4 p1, 0x0

    iput p1, v0, Landroid/support/v4/widget/c;->mg:I

    goto :goto_1

    :cond_0
    iget v1, v0, Landroid/support/v4/widget/c;->mg:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/support/v4/widget/c;->mg:I

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->lI:Landroid/support/v4/widget/s;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/s;->c(Landroid/view/View;II)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->lJ:Landroid/support/v4/widget/s;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1750
    return-void

    .line 1749
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a sliding drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(Landroid/view/View;Z)V
    .locals 4

    .line 902
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 903
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 904
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 905
    if-nez p2, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->A(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-ne v2, p1, :cond_2

    .line 908
    :cond_1
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/n;->d(Landroid/view/View;I)V

    goto :goto_1

    .line 911
    :cond_2
    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/support/v4/view/n;->d(Landroid/view/View;I)V

    .line 903
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 915
    :cond_3
    return-void
.end method

.method final aY()Landroid/view/View;
    .locals 5

    .line 957
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 958
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 959
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 960
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/c;

    .line 961
    iget v3, v3, Landroid/support/v4/widget/c;->mg:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    .line 962
    return-object v2

    .line 958
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 965
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method final aZ()Landroid/view/View;
    .locals 6

    .line 1951
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1952
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1953
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1954
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->A(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->A(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/c;

    iget v4, v4, Landroid/support/v4/widget/c;->me:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-eqz v4, :cond_2

    .line 1955
    return-object v3

    .line 1954
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1952
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1958
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7

    .line 1913
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 1914
    return-void

    .line 1919
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1920
    nop

    .line 1921
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_5

    .line 1922
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1923
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->A(Landroid/view/View;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 1924
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->A(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/c;

    iget v5, v5, Landroid/support/v4/widget/c;->mg:I

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    if-eqz v5, :cond_4

    .line 1925
    nop

    .line 1926
    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1921
    move v3, v6

    goto :goto_2

    .line 1924
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "View "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not a drawer"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1929
    :cond_3
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mb:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1921
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1933
    :cond_5
    if-nez v3, :cond_7

    .line 1934
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1935
    :goto_3
    if-ge v1, v0, :cond_7

    .line 1936
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mb:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1937
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    .line 1938
    invoke-virtual {v2, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1935
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1943
    :cond_7
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mb:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1944
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 2059
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2061
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->aY()Landroid/view/View;

    move-result-object p2

    .line 2062
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->A(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2070
    :cond_0
    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/support/v4/view/n;->d(Landroid/view/View;I)V

    goto :goto_1

    .line 2065
    :cond_1
    :goto_0
    const/4 p2, 0x4

    invoke-static {p1, p2}, Landroid/support/v4/view/n;->d(Landroid/view/View;I)V

    .line 2076
    :goto_1
    sget-boolean p2, Landroid/support/v4/widget/DrawerLayout;->lA:Z

    if-nez p2, :cond_2

    .line 2077
    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->lC:Landroid/support/v4/widget/b;

    invoke-static {p1, p2}, Landroid/support/v4/view/n;->a(Landroid/view/View;Landroid/support/v4/view/b;)V

    .line 2079
    :cond_2
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1903
    instance-of v0, p1, Landroid/support/v4/widget/c;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public computeScroll()V
    .locals 4

    .line 1311
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1312
    nop

    .line 1313
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1314
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/c;

    iget v3, v3, Landroid/support/v4/widget/c;->me:F

    .line 1315
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1313
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1317
    :cond_0
    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->lG:F

    .line 1319
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->lI:Landroid/support/v4/widget/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/s;->k(Z)Z

    move-result v0

    .line 1320
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->lJ:Landroid/support/v4/widget/s;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/s;->k(Z)Z

    move-result v1

    .line 1321
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 1322
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/n;->f(Landroid/view/View;)V

    .line 1324
    :cond_2
    return-void
.end method

.method final d(Landroid/view/View;F)V
    .locals 1

    .line 929
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/c;

    .line 930
    iget v0, p1, Landroid/support/v4/widget/c;->me:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 931
    return-void

    .line 934
    :cond_0
    iput p2, p1, Landroid/support/v4/widget/c;->me:F

    .line 935
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->lT:Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->lT:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->lT:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 936
    :cond_1
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1538
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 1539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->lG:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 1544
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1545
    if-eqz v0, :cond_6

    .line 1546
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1547
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1550
    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_0
    if-ltz v0, :cond_6

    .line 1551
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1555
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mc:Landroid/graphics/Rect;

    if-nez v5, :cond_1

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mc:Landroid/graphics/Rect;

    :cond_1
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mc:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mc:Landroid/graphics/Rect;

    float-to-int v6, v1

    float-to-int v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->z(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1556
    invoke-virtual {v4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getScrollX()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getScrollY()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {v4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->md:Landroid/graphics/Matrix;

    if-nez v6, :cond_2

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->md:Landroid/graphics/Matrix;

    :cond_2
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->md:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->md:Landroid/graphics/Matrix;

    invoke-virtual {v7, v5}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    :cond_3
    invoke-virtual {v4, v7}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getScrollX()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getScrollY()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    neg-float v5, v5

    neg-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :goto_1
    if-eqz v4, :cond_5

    .line 1561
    return v3

    .line 1550
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 1566
    :cond_6
    const/4 p1, 0x0

    return p1

    .line 1541
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1403
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v3

    .line 1404
    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->z(Landroid/view/View;)Z

    move-result v4

    .line 1405
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v5

    .line 1407
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 1408
    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v4, :cond_5

    .line 1409
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v9

    .line 1410
    move v11, v5

    move v5, v8

    move v10, v5

    :goto_0
    if-ge v5, v9, :cond_4

    .line 1411
    invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1412
    if-eq v12, v2, :cond_3

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_3

    .line 1413
    invoke-virtual {v12}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_0

    const/4 v13, 0x1

    goto :goto_1

    :cond_0
    move v13, v8

    :goto_1
    if-eqz v13, :cond_3

    invoke-virtual {v0, v12}, Landroid/support/v4/widget/DrawerLayout;->A(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1414
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v13

    if-lt v13, v3, :cond_3

    .line 1415
    invoke-virtual {v0, v12, v7}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1419
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    .line 1420
    if-le v12, v10, :cond_1

    .line 1421
    move v10, v12

    :cond_1
    goto :goto_2

    .line 1422
    :cond_2
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 1423
    if-ge v12, v11, :cond_3

    .line 1410
    move v11, v12

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1426
    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {v1, v10, v8, v11, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_3

    .line 1428
    :cond_5
    move v11, v5

    move v10, v8

    :goto_3
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v8

    .line 1429
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1431
    iget v3, v0, Landroid/support/v4/widget/DrawerLayout;->lG:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_6

    if-eqz v4, :cond_6

    .line 1432
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->lF:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x18

    .line 1433
    int-to-float v2, v2

    iget v3, v0, Landroid/support/v4/widget/DrawerLayout;->lG:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1434
    shl-int/lit8 v2, v2, 0x18

    iget v3, v0, Landroid/support/v4/widget/DrawerLayout;->lF:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 1435
    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->lH:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1437
    int-to-float v2, v10

    const/4 v3, 0x0

    int-to-float v4, v11

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Landroid/support/v4/widget/DrawerLayout;->lH:Landroid/graphics/Paint;

    move-object v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1438
    goto/16 :goto_4

    :cond_6
    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->lU:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_7

    .line 1439
    invoke-virtual {v0, v2, v7}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1440
    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->lU:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 1441
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v7

    .line 1442
    iget-object v9, v0, Landroid/support/v4/widget/DrawerLayout;->lI:Landroid/support/v4/widget/s;

    iget v9, v9, Landroid/support/v4/widget/s;->nu:I

    .line 1443
    int-to-float v10, v7

    int-to-float v9, v9

    div-float/2addr v10, v9

    .line 1444
    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1445
    iget-object v6, v0, Landroid/support/v4/widget/DrawerLayout;->lU:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v9

    add-int/2addr v3, v7

    .line 1446
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1445
    invoke-virtual {v6, v7, v9, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1447
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->lU:Landroid/graphics/drawable/Drawable;

    mul-float/2addr v4, v5

    float-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1448
    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->lU:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1449
    goto :goto_4

    :cond_7
    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->lV:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_8

    const/4 v3, 0x5

    .line 1450
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1451
    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->lV:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 1452
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 1453
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v9

    sub-int/2addr v9, v7

    .line 1454
    iget-object v10, v0, Landroid/support/v4/widget/DrawerLayout;->lJ:Landroid/support/v4/widget/s;

    iget v10, v10, Landroid/support/v4/widget/s;->nu:I

    .line 1455
    int-to-float v9, v9

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 1456
    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1457
    iget-object v6, v0, Landroid/support/v4/widget/DrawerLayout;->lV:Landroid/graphics/drawable/Drawable;

    sub-int v3, v7, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1458
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1457
    invoke-virtual {v6, v3, v9, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1459
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->lV:Landroid/graphics/drawable/Drawable;

    mul-float/2addr v4, v5

    float-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1460
    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->lV:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1462
    :cond_8
    :goto_4
    return v8
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1889
    new-instance v0, Landroid/support/v4/widget/c;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/support/v4/widget/c;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1908
    new-instance v0, Landroid/support/v4/widget/c;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1894
    instance-of v0, p1, Landroid/support/v4/widget/c;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/c;

    check-cast p1, Landroid/support/v4/widget/c;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/c;-><init>(Landroid/support/v4/widget/c;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/widget/c;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/c;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/support/v4/widget/c;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final h(II)V
    .locals 3

    .line 578
    nop

    .line 579
    invoke-static {p0}, Landroid/support/v4/view/n;->h(Landroid/view/View;)I

    move-result v0

    .line 578
    invoke-static {p2, v0}, Landroid/support/v4/view/d;->getAbsoluteGravity(II)I

    move-result v0

    .line 581
    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    const/4 v2, 0x5

    if-eq p2, v2, :cond_2

    const v2, 0x800003

    if-eq p2, v2, :cond_1

    const v2, 0x800005

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->lQ:I

    goto :goto_0

    .line 589
    :cond_1
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->lP:I

    .line 590
    goto :goto_0

    .line 586
    :cond_2
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->lO:I

    .line 587
    goto :goto_0

    .line 583
    :cond_3
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->lN:I

    .line 584
    nop

    .line 596
    :goto_0
    if-eqz p1, :cond_5

    .line 598
    if-ne v0, v1, :cond_4

    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->lI:Landroid/support/v4/widget/s;

    goto :goto_1

    :cond_4
    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->lJ:Landroid/support/v4/widget/s;

    .line 599
    :goto_1
    invoke-virtual {p2}, Landroid/support/v4/widget/s;->cancel()V

    .line 601
    :cond_5
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 603
    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->B(I)Landroid/view/View;

    move-result-object p1

    .line 604
    if-eqz p1, :cond_6

    .line 605
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->B(Landroid/view/View;)V

    return-void

    .line 609
    :pswitch_1
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->B(I)Landroid/view/View;

    move-result-object p1

    .line 610
    if-eqz p1, :cond_6

    .line 611
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->C(Landroid/view/View;)V

    .line 616
    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final i(Landroid/view/View;I)Z
    .locals 0

    .line 952
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->y(Landroid/view/View;)I

    move-result p1

    .line 953
    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final j(Z)V
    .locals 9

    .line 1643
    nop

    .line 1644
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1645
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1646
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1647
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/c;

    .line 1649
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->A(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p1, :cond_0

    iget-boolean v6, v5, Landroid/support/v4/widget/c;->mf:Z

    if-eqz v6, :cond_2

    .line 1650
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1655
    const/4 v7, 0x3

    invoke-virtual {p0, v4, v7}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1656
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->lI:Landroid/support/v4/widget/s;

    neg-int v6, v6

    .line 1657
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1656
    invoke-virtual {v7, v4, v6, v8}, Landroid/support/v4/widget/s;->c(Landroid/view/View;II)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_1

    .line 1659
    :cond_1
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->lJ:Landroid/support/v4/widget/s;

    .line 1660
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1659
    invoke-virtual {v6, v4, v7, v8}, Landroid/support/v4/widget/s;->c(Landroid/view/View;II)Z

    move-result v4

    or-int/2addr v3, v4

    .line 1663
    :goto_1
    iput-boolean v1, v5, Landroid/support/v4/widget/c;->mf:Z

    .line 1645
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1666
    :cond_3
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->lK:Landroid/support/v4/widget/e;

    invoke-virtual {p1}, Landroid/support/v4/widget/e;->ba()V

    .line 1667
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->lL:Landroid/support/v4/widget/e;

    invoke-virtual {p1}, Landroid/support/v4/widget/e;->ba()V

    .line 1669
    if-eqz v3, :cond_4

    .line 1670
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1672
    :cond_4
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1024
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1025
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 1026
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1018
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1019
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 1020
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1385
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1386
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->bO:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->bP:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1388
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 1389
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->lW:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->lW:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    .line 1390
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_1

    :cond_0
    goto :goto_0

    .line 1392
    :cond_1
    nop

    .line 1394
    :goto_0
    move v0, v2

    :goto_1
    if-lez v0, :cond_2

    .line 1395
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->bP:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1396
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->bP:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1399
    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1487
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1490
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->lI:Landroid/support/v4/widget/s;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/s;->c(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->lJ:Landroid/support/v4/widget/s;

    .line 1491
    invoke-virtual {v2, p1}, Landroid/support/v4/widget/s;->c(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1493
    nop

    .line 1495
    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 1514
    :pswitch_0
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->lI:Landroid/support/v4/widget/s;

    iget-object v0, p1, Landroid/support/v4/widget/s;->nk:[F

    array-length v0, v0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p1, v4}, Landroid/support/v4/widget/s;->G(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/support/v4/widget/s;->nm:[F

    aget v5, v5, v4

    iget-object v6, p1, Landroid/support/v4/widget/s;->nk:[F

    aget v6, v6, v4

    sub-float/2addr v5, v6

    iget-object v6, p1, Landroid/support/v4/widget/s;->nn:[F

    aget v6, v6, v4

    iget-object v7, p1, Landroid/support/v4/widget/s;->nl:[F

    aget v7, v7, v4

    sub-float/2addr v6, v7

    mul-float/2addr v5, v5

    mul-float/2addr v6, v6

    add-float/2addr v5, v6

    iget v6, p1, Landroid/support/v4/widget/s;->mTouchSlop:I

    iget v7, p1, Landroid/support/v4/widget/s;->mTouchSlop:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    if-eqz v5, :cond_1

    move p1, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move p1, v3

    :goto_2
    if-eqz p1, :cond_4

    .line 1515
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->lK:Landroid/support/v4/widget/e;

    invoke-virtual {p1}, Landroid/support/v4/widget/e;->ba()V

    .line 1516
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->lL:Landroid/support/v4/widget/e;

    invoke-virtual {p1}, Landroid/support/v4/widget/e;->ba()V

    goto :goto_4

    .line 1523
    :pswitch_1
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->j(Z)V

    .line 1524
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->lR:Z

    .line 1525
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->lS:Z

    goto :goto_4

    .line 1497
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1498
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1499
    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->kO:F

    .line 1500
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->kP:F

    .line 1501
    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->lG:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 1502
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->lI:Landroid/support/v4/widget/s;

    float-to-int v0, v0

    float-to-int p1, p1

    invoke-virtual {v4, v0, p1}, Landroid/support/v4/widget/s;->j(II)Landroid/view/View;

    move-result-object p1

    .line 1503
    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->z(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1504
    nop

    .line 1507
    move p1, v2

    goto :goto_3

    :cond_3
    move p1, v3

    :goto_3
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->lR:Z

    .line 1508
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->lS:Z

    .line 1509
    goto :goto_5

    .line 1529
    :cond_4
    :goto_4
    move p1, v3

    :goto_5
    if-nez v1, :cond_8

    if-nez p1, :cond_8

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result p1

    move v0, v3

    :goto_6
    if-ge v0, p1, :cond_6

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/c;

    iget-boolean v1, v1, Landroid/support/v4/widget/c;->mf:Z

    if-eqz v1, :cond_5

    move p1, v2

    goto :goto_7

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    move p1, v3

    :goto_7
    if-nez p1, :cond_8

    iget-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->lS:Z

    if-eqz p1, :cond_7

    goto :goto_8

    :cond_7
    return v3

    :cond_8
    :goto_8
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1978
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->aZ()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1979
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1980
    return v1

    .line 1982
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1987
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1988
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->aZ()Landroid/view/View;

    move-result-object p1

    .line 1989
    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->x(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1990
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/DrawerLayout;->j(Z)V

    .line 1992
    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return p2

    .line 1994
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    .line 1220
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/widget/DrawerLayout;->dl:Z

    .line 1221
    sub-int v3, p4, p2

    .line 1222
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    .line 1223
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_a

    .line 1224
    invoke-virtual {v0, v6}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1226
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_9

    .line 1227
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v4/widget/c;

    .line 1232
    invoke-virtual {v0, v7}, Landroid/support/v4/widget/DrawerLayout;->z(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1233
    iget v9, v8, Landroid/support/v4/widget/c;->leftMargin:I

    iget v10, v8, Landroid/support/v4/widget/c;->topMargin:I

    iget v11, v8, Landroid/support/v4/widget/c;->leftMargin:I

    .line 1234
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v11, v12

    iget v8, v8, Landroid/support/v4/widget/c;->topMargin:I

    .line 1235
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v8, v12

    .line 1233
    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_6

    .line 1237
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1238
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1242
    const/4 v11, 0x3

    invoke-virtual {v0, v7, v11}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1243
    neg-int v11, v9

    int-to-float v12, v9

    iget v13, v8, Landroid/support/v4/widget/c;->me:F

    mul-float/2addr v13, v12

    float-to-int v13, v13

    add-int/2addr v11, v13

    .line 1244
    add-int v13, v9, v11

    int-to-float v13, v13

    div-float/2addr v13, v12

    goto :goto_1

    .line 1246
    :cond_1
    int-to-float v11, v9

    iget v12, v8, Landroid/support/v4/widget/c;->me:F

    mul-float/2addr v12, v11

    float-to-int v12, v12

    sub-int v12, v3, v12

    .line 1247
    sub-int v13, v3, v12

    int-to-float v13, v13

    div-float/2addr v13, v11

    .line 1250
    move v11, v12

    :goto_1
    iget v12, v8, Landroid/support/v4/widget/c;->me:F

    cmpl-float v12, v13, v12

    if-eqz v12, :cond_2

    .line 1252
    move v12, v2

    goto :goto_2

    .line 1250
    :cond_2
    nop

    .line 1252
    const/4 v12, 0x0

    :goto_2
    iget v14, v8, Landroid/support/v4/widget/c;->gravity:I

    and-int/lit8 v14, v14, 0x70

    .line 1254
    const/16 v2, 0x10

    if-eq v14, v2, :cond_4

    const/16 v2, 0x50

    if-eq v14, v2, :cond_3

    .line 1257
    iget v2, v8, Landroid/support/v4/widget/c;->topMargin:I

    add-int/2addr v9, v11

    iget v14, v8, Landroid/support/v4/widget/c;->topMargin:I

    add-int/2addr v14, v10

    invoke-virtual {v7, v11, v2, v9, v14}, Landroid/view/View;->layout(IIII)V

    .line 1259
    goto :goto_4

    .line 1263
    :cond_3
    sub-int v2, p5, p3

    .line 1264
    iget v10, v8, Landroid/support/v4/widget/c;->bottomMargin:I

    sub-int v10, v2, v10

    .line 1265
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v10, v14

    add-int/2addr v9, v11

    iget v14, v8, Landroid/support/v4/widget/c;->bottomMargin:I

    sub-int/2addr v2, v14

    .line 1264
    invoke-virtual {v7, v11, v10, v9, v2}, Landroid/view/View;->layout(IIII)V

    .line 1268
    goto :goto_4

    .line 1272
    :cond_4
    sub-int v2, p5, p3

    .line 1273
    sub-int v14, v2, v10

    div-int/lit8 v14, v14, 0x2

    .line 1277
    iget v5, v8, Landroid/support/v4/widget/c;->topMargin:I

    if-ge v14, v5, :cond_5

    .line 1278
    iget v14, v8, Landroid/support/v4/widget/c;->topMargin:I

    goto :goto_3

    .line 1279
    :cond_5
    add-int v5, v14, v10

    iget v1, v8, Landroid/support/v4/widget/c;->bottomMargin:I

    sub-int v1, v2, v1

    if-le v5, v1, :cond_6

    .line 1280
    iget v1, v8, Landroid/support/v4/widget/c;->bottomMargin:I

    sub-int/2addr v2, v1

    sub-int v14, v2, v10

    .line 1282
    :cond_6
    :goto_3
    add-int/2addr v9, v11

    add-int/2addr v10, v14

    invoke-virtual {v7, v11, v14, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1284
    :goto_4
    if-eqz v12, :cond_7

    .line 1289
    invoke-virtual {v0, v7, v13}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;F)V

    .line 1292
    :cond_7
    iget v1, v8, Landroid/support/v4/widget/c;->me:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    .line 1293
    const/4 v5, 0x0

    goto :goto_5

    .line 1292
    :cond_8
    const/4 v5, 0x4

    .line 1293
    :goto_5
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_9

    .line 1294
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1223
    :cond_9
    :goto_6
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1298
    :cond_a
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout;->dl:Z

    .line 1299
    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 1300
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v0, p0

    .line 1031
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1032
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1033
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1034
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1036
    const/16 v5, 0x12c

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_0

    if-eq v2, v6, :cond_2

    .line 1037
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1042
    const/high16 v7, -0x80000000

    if-eq v1, v7, :cond_1

    .line 1043
    if-nez v1, :cond_1

    .line 1045
    nop

    .line 1048
    move v3, v5

    :cond_1
    if-eq v2, v7, :cond_2

    .line 1049
    if-nez v2, :cond_2

    .line 1051
    nop

    .line 1060
    move v4, v5

    :cond_2
    invoke-virtual {v0, v3, v4}, Landroid/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V

    .line 1062
    iget-object v1, v0, Landroid/support/v4/widget/DrawerLayout;->lW:Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/n;->o(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1063
    const/4 v1, 0x1

    goto :goto_0

    .line 1062
    :cond_3
    nop

    .line 1063
    move v1, v5

    :goto_0
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/n;->h(Landroid/view/View;)I

    move-result v7

    .line 1067
    nop

    .line 1068
    nop

    .line 1069
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v8

    .line 1070
    move v9, v5

    move v10, v9

    move v11, v10

    :goto_1
    if-ge v9, v8, :cond_15

    .line 1071
    invoke-virtual {v0, v9}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1073
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_14

    .line 1074
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v4/widget/c;

    .line 1079
    const/4 v15, 0x3

    if-eqz v1, :cond_9

    .line 1080
    iget v2, v13, Landroid/support/v4/widget/c;->gravity:I

    invoke-static {v2, v7}, Landroid/support/v4/view/d;->getAbsoluteGravity(II)I

    move-result v2

    .line 1081
    invoke-static {v12}, Landroid/support/v4/view/n;->o(Landroid/view/View;)Z

    move-result v16

    const/16 v6, 0x15

    if-eqz v16, :cond_6

    .line 1082
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v14, v6, :cond_9

    .line 1083
    iget-object v6, v0, Landroid/support/v4/widget/DrawerLayout;->lW:Ljava/lang/Object;

    check-cast v6, Landroid/view/WindowInsets;

    .line 1084
    if-ne v2, v15, :cond_4

    .line 1085
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    .line 1086
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v14

    .line 1087
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    .line 1085
    invoke-virtual {v6, v2, v14, v5, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v6

    goto :goto_2

    .line 1088
    :cond_4
    const/4 v14, 0x5

    if-ne v2, v14, :cond_5

    .line 1089
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 1090
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v14

    .line 1091
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    .line 1089
    invoke-virtual {v6, v5, v2, v14, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v6

    .line 1093
    :cond_5
    :goto_2
    invoke-virtual {v12, v6}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 1094
    goto :goto_4

    .line 1096
    :cond_6
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v14, v6, :cond_9

    .line 1097
    iget-object v6, v0, Landroid/support/v4/widget/DrawerLayout;->lW:Ljava/lang/Object;

    check-cast v6, Landroid/view/WindowInsets;

    .line 1098
    const/4 v14, 0x3

    if-ne v2, v14, :cond_7

    .line 1099
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    .line 1100
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v14

    .line 1101
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    .line 1099
    invoke-virtual {v6, v2, v14, v5, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v6

    goto :goto_3

    .line 1102
    :cond_7
    const/4 v14, 0x5

    if-ne v2, v14, :cond_8

    .line 1103
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 1104
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v14

    .line 1105
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    .line 1103
    invoke-virtual {v6, v5, v2, v14, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v6

    .line 1107
    :cond_8
    :goto_3
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    iput v2, v13, Landroid/support/v4/widget/c;->leftMargin:I

    .line 1108
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    iput v2, v13, Landroid/support/v4/widget/c;->topMargin:I

    .line 1109
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iput v2, v13, Landroid/support/v4/widget/c;->rightMargin:I

    .line 1110
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v13, Landroid/support/v4/widget/c;->bottomMargin:I

    .line 1115
    :cond_9
    :goto_4
    invoke-virtual {v0, v12}, Landroid/support/v4/widget/DrawerLayout;->z(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1117
    iget v2, v13, Landroid/support/v4/widget/c;->leftMargin:I

    sub-int v2, v3, v2

    iget v6, v13, Landroid/support/v4/widget/c;->rightMargin:I

    sub-int/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1119
    iget v14, v13, Landroid/support/v4/widget/c;->topMargin:I

    sub-int v14, v4, v14

    iget v13, v13, Landroid/support/v4/widget/c;->bottomMargin:I

    sub-int/2addr v14, v13

    invoke-static {v14, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1121
    invoke-virtual {v12, v2, v13}, Landroid/view/View;->measure(II)V

    .line 1122
    goto/16 :goto_8

    :cond_a
    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v0, v12}, Landroid/support/v4/widget/DrawerLayout;->A(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1123
    sget-boolean v2, Landroid/support/v4/widget/DrawerLayout;->lB:Z

    if-eqz v2, :cond_b

    .line 1124
    invoke-static {v12}, Landroid/support/v4/view/n;->k(Landroid/view/View;)F

    move-result v2

    iget v14, v0, Landroid/support/v4/widget/DrawerLayout;->lD:F

    cmpl-float v2, v2, v14

    if-eqz v2, :cond_b

    .line 1125
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->lD:F

    invoke-static {v12, v2}, Landroid/support/v4/view/n;->a(Landroid/view/View;F)V

    .line 1128
    :cond_b
    nop

    .line 1129
    invoke-virtual {v0, v12}, Landroid/support/v4/widget/DrawerLayout;->y(Landroid/view/View;)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    .line 1132
    const/4 v14, 0x3

    if-ne v2, v14, :cond_c

    .line 1133
    const/4 v14, 0x1

    goto :goto_5

    .line 1132
    :cond_c
    nop

    .line 1133
    move v14, v5

    :goto_5
    if-eqz v14, :cond_d

    if-nez v10, :cond_e

    :cond_d
    if-nez v14, :cond_11

    if-eqz v11, :cond_11

    .line 1135
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Child drawer has absolute gravity "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1136
    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_10

    and-int/lit8 v3, v2, 0x5

    const/4 v4, 0x5

    if-ne v3, v4, :cond_f

    const-string v2, "RIGHT"

    goto :goto_6

    :cond_f
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_10
    const-string v2, "LEFT"

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but this DrawerLayout already has a drawer view along that edge"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1139
    :cond_11
    if-eqz v14, :cond_12

    .line 1140
    nop

    .line 1144
    const/4 v10, 0x1

    goto :goto_7

    .line 1142
    :cond_12
    nop

    .line 1144
    const/4 v11, 0x1

    :goto_7
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->lE:I

    iget v14, v13, Landroid/support/v4/widget/c;->leftMargin:I

    add-int/2addr v2, v14

    iget v14, v13, Landroid/support/v4/widget/c;->rightMargin:I

    add-int/2addr v2, v14

    iget v14, v13, Landroid/support/v4/widget/c;->width:I

    move/from16 v15, p1

    invoke-static {v15, v2, v14}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v2

    .line 1147
    iget v14, v13, Landroid/support/v4/widget/c;->topMargin:I

    iget v5, v13, Landroid/support/v4/widget/c;->bottomMargin:I

    add-int/2addr v14, v5

    iget v5, v13, Landroid/support/v4/widget/c;->height:I

    move/from16 v13, p2

    invoke-static {v13, v14, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v5

    .line 1150
    invoke-virtual {v12, v2, v5}, Landroid/view/View;->measure(II)V

    .line 1151
    goto :goto_9

    .line 1152
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Child "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1070
    :cond_14
    :goto_8
    move/from16 v15, p1

    move/from16 v13, p2

    :goto_9
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1157
    :cond_15
    return-void

    .line 1055
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1999
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    if-nez v0, :cond_0

    .line 2000
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2001
    return-void

    .line 2004
    :cond_0
    check-cast p1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    .line 2005
    iget-object v0, p1, Landroid/support/v4/view/AbsSavedState;->jR:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2007
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->mh:I

    if-eqz v0, :cond_1

    .line 2008
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->mh:I

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->B(I)Landroid/view/View;

    move-result-object v0

    .line 2009
    if-eqz v0, :cond_1

    .line 2010
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->B(Landroid/view/View;)V

    .line 2014
    :cond_1
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->mi:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 2015
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->mi:I

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->h(II)V

    .line 2017
    :cond_2
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->mj:I

    if-eq v0, v1, :cond_3

    .line 2018
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->mj:I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/widget/DrawerLayout;->h(II)V

    .line 2020
    :cond_3
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->mk:I

    if-eq v0, v1, :cond_4

    .line 2021
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->mk:I

    const v2, 0x800003

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/widget/DrawerLayout;->h(II)V

    .line 2023
    :cond_4
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->ml:I

    if-eq v0, v1, :cond_5

    .line 2024
    iget p1, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->ml:I

    const v0, 0x800005

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->h(II)V

    .line 2026
    :cond_5
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 1380
    sget-boolean p1, Landroid/support/v4/widget/DrawerLayout;->lB:Z

    if-nez p1, :cond_4

    invoke-static {p0}, Landroid/support/v4/view/n;->h(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->lX:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->lX:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/graphics/drawable/Drawable;I)Z

    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->lX:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->lY:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->lY:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/graphics/drawable/Drawable;I)Z

    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->lY:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->lZ:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->lU:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroid/support/v4/view/n;->h(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->lY:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->lY:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/graphics/drawable/Drawable;I)Z

    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->lY:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->lX:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->lX:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/graphics/drawable/Drawable;I)Z

    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->lX:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->ma:Landroid/graphics/drawable/Drawable;

    :goto_1
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->lV:Landroid/graphics/drawable/Drawable;

    .line 1381
    :cond_4
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .line 2030
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2031
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2033
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 2034
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    .line 2035
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2036
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/c;

    .line 2038
    iget v5, v4, Landroid/support/v4/widget/c;->mg:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 2040
    move v5, v6

    goto :goto_1

    .line 2038
    :cond_0
    nop

    .line 2040
    move v5, v2

    :goto_1
    iget v7, v4, Landroid/support/v4/widget/c;->mg:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    goto :goto_2

    .line 2041
    :cond_1
    move v6, v2

    :goto_2
    if-nez v5, :cond_3

    if-eqz v6, :cond_2

    goto :goto_3

    .line 2034
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2044
    :cond_3
    :goto_3
    iget v0, v4, Landroid/support/v4/widget/c;->gravity:I

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->mh:I

    .line 2045
    nop

    .line 2049
    :cond_4
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->lN:I

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->mi:I

    .line 2050
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->lO:I

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->mj:I

    .line 2051
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->lP:I

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->mk:I

    .line 2052
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->lQ:I

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->ml:I

    .line 2054
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1571
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->lI:Landroid/support/v4/widget/s;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/s;->d(Landroid/view/MotionEvent;)V

    .line 1572
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->lJ:Landroid/support/v4/widget/s;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/s;->d(Landroid/view/MotionEvent;)V

    .line 1574
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1575
    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1589
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1590
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1591
    nop

    .line 1592
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->lI:Landroid/support/v4/widget/s;

    float-to-int v4, v0

    float-to-int v5, p1

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/widget/s;->j(II)Landroid/view/View;

    move-result-object v1

    .line 1593
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->z(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1594
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->kO:F

    sub-float/2addr v0, v1

    .line 1595
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->kP:F

    sub-float/2addr p1, v1

    .line 1596
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->lI:Landroid/support/v4/widget/s;

    iget v1, v1, Landroid/support/v4/widget/s;->mTouchSlop:I

    .line 1597
    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    mul-int/2addr v1, v1

    int-to-float p1, v1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1

    .line 1599
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->aY()Landroid/view/View;

    move-result-object p1

    .line 1600
    if-eqz p1, :cond_1

    .line 1601
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->x(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1605
    :cond_0
    move p1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->j(Z)V

    .line 1606
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->lR:Z

    .line 1607
    goto :goto_2

    .line 1579
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1580
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1581
    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->kO:F

    .line 1582
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->kP:F

    .line 1583
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->lR:Z

    .line 1584
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->lS:Z

    .line 1585
    goto :goto_2

    .line 1611
    :cond_2
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->j(Z)V

    .line 1612
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->lR:Z

    .line 1613
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->lS:Z

    .line 1618
    :goto_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1627
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1629
    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->lR:Z

    .line 1630
    if-eqz p1, :cond_0

    .line 1631
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->j(Z)V

    .line 1633
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1304
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->dl:Z

    if-nez v0, :cond_0

    .line 1305
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1307
    :cond_0
    return-void
.end method

.method public final x(Landroid/view/View;)I
    .locals 3

    .line 711
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->A(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 714
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/c;

    iget p1, p1, Landroid/support/v4/widget/c;->gravity:I

    .line 715
    invoke-static {p0}, Landroid/support/v4/view/n;->h(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_9

    const/4 v2, 0x5

    if-eq p1, v2, :cond_6

    const v2, 0x800003

    if-eq p1, v2, :cond_3

    const v2, 0x800005

    if-eq p1, v2, :cond_0

    goto :goto_4

    :cond_0
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->lQ:I

    if-eq p1, v1, :cond_1

    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->lQ:I

    return p1

    :cond_1
    if-nez v0, :cond_2

    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->lO:I

    goto :goto_0

    :cond_2
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->lN:I

    :goto_0
    if-eq p1, v1, :cond_c

    return p1

    :cond_3
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->lP:I

    if-eq p1, v1, :cond_4

    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->lP:I

    return p1

    :cond_4
    if-nez v0, :cond_5

    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->lN:I

    goto :goto_1

    :cond_5
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->lO:I

    :goto_1
    if-eq p1, v1, :cond_c

    return p1

    :cond_6
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->lO:I

    if-eq p1, v1, :cond_7

    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->lO:I

    return p1

    :cond_7
    if-nez v0, :cond_8

    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->lQ:I

    goto :goto_2

    :cond_8
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->lP:I

    :goto_2
    if-eq p1, v1, :cond_c

    return p1

    :cond_9
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->lN:I

    if-eq p1, v1, :cond_a

    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->lN:I

    return p1

    :cond_a
    if-nez v0, :cond_b

    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->lP:I

    goto :goto_3

    :cond_b
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->lQ:I

    :goto_3
    if-eq p1, v1, :cond_c

    return p1

    :cond_c
    :goto_4
    const/4 p1, 0x0

    return p1

    .line 712
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final y(Landroid/view/View;)I
    .locals 1

    .line 947
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/c;

    iget p1, p1, Landroid/support/v4/widget/c;->gravity:I

    .line 948
    invoke-static {p0}, Landroid/support/v4/view/n;->h(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/d;->getAbsoluteGravity(II)I

    move-result p1

    return p1
.end method

.method final z(Landroid/view/View;)Z
    .locals 0

    .line 1466
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/c;

    iget p1, p1, Landroid/support/v4/widget/c;->gravity:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
