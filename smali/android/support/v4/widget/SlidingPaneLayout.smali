.class public Landroid/support/v4/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field kK:Z

.field private kO:F

.field private kP:F

.field private mFirstLayout:Z

.field private mK:I

.field private mL:I

.field private mM:Landroid/graphics/drawable/Drawable;

.field private mN:Landroid/graphics/drawable/Drawable;

.field private final mO:I

.field private mP:Z

.field mQ:Landroid/view/View;

.field mR:F

.field private mS:F

.field mT:I

.field private mU:I

.field final mV:Landroid/support/v4/widget/s;

.field mW:Z

.field private final mX:Landroid/graphics/Rect;

.field final mY:Ljava/util/ArrayList;

.field private mZ:Ljava/lang/reflect/Method;

.field private na:Ljava/lang/reflect/Field;

.field private nb:Z


# direct methods
.method private a(Landroid/view/View;FI)V
    .locals 3

    .line 962
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/q;

    .line 964
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_2

    if-eqz p3, :cond_2

    .line 965
    const/high16 v1, -0x1000000

    and-int/2addr v1, p3

    ushr-int/lit8 v1, v1, 0x18

    .line 966
    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int p2, v1

    .line 967
    shl-int/lit8 p2, p2, 0x18

    const v1, 0xffffff

    and-int/2addr p3, v1

    or-int/2addr p2, p3

    .line 968
    iget-object p3, v0, Landroid/support/v4/widget/q;->nh:Landroid/graphics/Paint;

    if-nez p3, :cond_0

    .line 969
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, v0, Landroid/support/v4/widget/q;->nh:Landroid/graphics/Paint;

    .line 971
    :cond_0
    iget-object p3, v0, Landroid/support/v4/widget/q;->nh:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 972
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    .line 973
    iget-object p2, v0, Landroid/support/v4/widget/q;->nh:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 975
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->K(Landroid/view/View;)V

    .line 976
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p2

    if-eqz p2, :cond_4

    .line 977
    iget-object p2, v0, Landroid/support/v4/widget/q;->nh:Landroid/graphics/Paint;

    if-eqz p2, :cond_3

    .line 978
    iget-object p2, v0, Landroid/support/v4/widget/q;->nh:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 980
    :cond_3
    new-instance p2, Landroid/support/v4/widget/p;

    invoke-direct {p2, p0, p1}, Landroid/support/v4/widget/p;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 981
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mY:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    invoke-static {p0, p2}, Landroid/support/v4/view/n;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 984
    :cond_4
    return-void
.end method

.method private bh()Z
    .locals 2

    .line 853
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->f(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 857
    :cond_0
    return v1

    .line 854
    :cond_1
    :goto_0
    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mW:Z

    .line 855
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method final K(Landroid/view/View;)V
    .locals 5

    .line 1015
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1016
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/q;

    iget-object v0, v0, Landroid/support/v4/widget/q;->nh:Landroid/graphics/Paint;

    invoke-static {p1, v0}, Landroid/support/v4/view/n;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 1017
    return-void

    .line 1020
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 1027
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->nb:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1029
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v3, "getDisplayList"

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mZ:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    goto :goto_0

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    const-string v3, "SlidingPaneLayout"

    const-string v4, "Couldn\'t fetch getDisplayList method; dimming won\'t work right."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1036
    :goto_0
    :try_start_1
    const-class v0, Landroid/view/View;

    const-string v3, "mRecreateDisplayList"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->na:Ljava/lang/reflect/Field;

    .line 1037
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->na:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1041
    goto :goto_1

    .line 1038
    :catch_1
    move-exception v0

    .line 1039
    const-string v3, "SlidingPaneLayout"

    const-string v4, "Couldn\'t fetch mRecreateDisplayList field; dimming will be slow."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1042
    :goto_1
    iput-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->nb:Z

    .line 1044
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mZ:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->na:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    goto :goto_2

    .line 1051
    :cond_2
    :try_start_2
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->na:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 1052
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mZ:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1055
    goto :goto_3

    .line 1053
    :catch_2
    move-exception v0

    .line 1054
    const-string v1, "SlidingPaneLayout"

    const-string v2, "Error refreshing display list state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1046
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1047
    return-void

    .line 1058
    :cond_4
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1059
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    .line 1058
    invoke-static {p0, v0, v1, v2, p1}, Landroid/support/v4/view/n;->a(Landroid/view/View;IIII)V

    .line 1060
    return-void
.end method

.method final L(Landroid/view/View;)Z
    .locals 2

    .line 1267
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1268
    return v0

    .line 1270
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/q;

    .line 1271
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mP:Z

    if-eqz v1, :cond_1

    iget-boolean p1, p1, Landroid/support/v4/widget/q;->ng:Z

    if-eqz p1, :cond_1

    iget p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mR:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method final bi()Z
    .locals 2

    .line 1617
    invoke-static {p0}, Landroid/support/v4/view/n;->h(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1288
    instance-of v0, p1, Landroid/support/v4/widget/q;

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
    .locals 2

    .line 1097
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mV:Landroid/support/v4/widget/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/s;->k(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1098
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mP:Z

    if-nez v0, :cond_0

    .line 1099
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mV:Landroid/support/v4/widget/s;

    invoke-virtual {v0}, Landroid/support/v4/widget/s;->abort()V

    .line 1100
    return-void

    .line 1103
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/n;->f(Landroid/view/View;)V

    .line 1105
    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1175
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1176
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->bi()Z

    move-result v0

    .line 1178
    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mN:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1181
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mM:Landroid/graphics/drawable/Drawable;

    .line 1184
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1185
    :goto_1
    if-eqz v1, :cond_4

    if-nez v0, :cond_2

    goto :goto_3

    .line 1190
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1191
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1193
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1196
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->bi()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1197
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1198
    add-int/2addr v4, v1

    goto :goto_2

    .line 1200
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1201
    sub-int v4, v1, v4

    .line 1204
    move v6, v4

    move v4, v1

    move v1, v6

    :goto_2
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1205
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1206
    return-void

    .line 1187
    :cond_4
    :goto_3
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 988
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/q;

    .line 990
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 992
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mP:Z

    if-eqz v2, :cond_1

    iget-boolean v0, v0, Landroid/support/v4/widget/q;->nf:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mQ:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 994
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mX:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 995
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->bi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mX:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mX:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mQ:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 998
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mX:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mX:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mQ:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1000
    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mX:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1003
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 1005
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1007
    return p2
.end method

.method final f(F)Z
    .locals 5

    .line 1069
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mP:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1071
    return v1

    .line 1074
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->bi()Z

    move-result v0

    .line 1075
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mQ:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/q;

    .line 1078
    if-eqz v0, :cond_1

    .line 1079
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v0

    iget v2, v2, Landroid/support/v4/widget/q;->rightMargin:I

    add-int/2addr v0, v2

    .line 1080
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mQ:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1081
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v0, v0

    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mT:I

    int-to-float v4, v4

    mul-float/2addr p1, v4

    add-float/2addr v0, p1

    int-to-float p1, v2

    add-float/2addr v0, p1

    sub-float/2addr v3, v0

    float-to-int p1, v3

    .line 1082
    goto :goto_0

    .line 1083
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v0

    iget v2, v2, Landroid/support/v4/widget/q;->leftMargin:I

    add-int/2addr v0, v2

    .line 1084
    int-to-float v0, v0

    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mT:I

    int-to-float v2, v2

    mul-float/2addr p1, v2

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 1087
    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mV:Landroid/support/v4/widget/s;

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mQ:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mQ:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0, v2, p1, v3}, Landroid/support/v4/widget/s;->c(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1088
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result p1

    move v0, v1

    :goto_1
    if-ge v0, p1, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1089
    :cond_3
    invoke-static {p0}, Landroid/support/v4/view/n;->f(Landroid/view/View;)V

    .line 1090
    const/4 p1, 0x1

    return p1

    .line 1092
    :cond_4
    return v1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1276
    new-instance v0, Landroid/support/v4/widget/q;

    invoke-direct {v0}, Landroid/support/v4/widget/q;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1293
    new-instance v0, Landroid/support/v4/widget/q;

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1281
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/q;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/q;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/widget/q;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/q;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 420
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 422
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 426
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 429
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 430
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mY:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/p;

    .line 431
    invoke-virtual {v2}, Landroid/support/v4/widget/p;->run()V

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 434
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 754
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 757
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mP:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 759
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 760
    if-eqz v1, :cond_0

    .line 761
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mV:Landroid/support/v4/widget/s;

    .line 762
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 761
    invoke-virtual {v3, v1, v4, v5}, Landroid/support/v4/widget/s;->d(Landroid/view/View;II)Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mW:Z

    .line 766
    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mP:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->kK:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 771
    :cond_1
    const/4 v1, 0x3

    const/4 v3, 0x0

    if-eq v0, v1, :cond_8

    if-ne v0, v2, :cond_2

    goto :goto_3

    .line 776
    :cond_2
    nop

    .line 778
    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 794
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 795
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 796
    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->kO:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 797
    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->kP:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 798
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mV:Landroid/support/v4/widget/s;

    iget v4, v4, Landroid/support/v4/widget/s;->mTouchSlop:I

    .line 799
    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_5

    cmpl-float v0, v1, v0

    if-lez v0, :cond_5

    .line 800
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mV:Landroid/support/v4/widget/s;

    invoke-virtual {p1}, Landroid/support/v4/widget/s;->cancel()V

    .line 801
    iput-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->kK:Z

    .line 802
    return v3

    .line 780
    :cond_4
    iput-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->kK:Z

    .line 781
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 782
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 783
    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->kO:F

    .line 784
    iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->kP:F

    .line 786
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mV:Landroid/support/v4/widget/s;

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mQ:Landroid/view/View;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {v4, v5, v0, v1}, Landroid/support/v4/widget/s;->d(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mQ:Landroid/view/View;

    .line 787
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->L(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 788
    nop

    .line 807
    move v0, v2

    goto :goto_1

    :cond_5
    :goto_0
    move v0, v3

    :goto_1
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mV:Landroid/support/v4/widget/s;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/s;->c(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 809
    if-nez p1, :cond_7

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    return v3

    :cond_7
    :goto_2
    return v2

    .line 772
    :cond_8
    :goto_3
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mV:Landroid/support/v4/widget/s;

    invoke-virtual {p1}, Landroid/support/v4/widget/s;->cancel()V

    .line 773
    return v3

    .line 767
    :cond_9
    :goto_4
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mV:Landroid/support/v4/widget/s;

    invoke-virtual {v0}, Landroid/support/v4/widget/s;->cancel()V

    .line 768
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 21

    move-object/from16 v0, p0

    .line 650
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->bi()Z

    move-result v1

    .line 651
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 652
    iget-object v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mV:Landroid/support/v4/widget/s;

    const/4 v4, 0x2

    iput v4, v3, Landroid/support/v4/widget/s;->nv:I

    goto :goto_0

    .line 654
    :cond_0
    iget-object v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mV:Landroid/support/v4/widget/s;

    iput v2, v3, Landroid/support/v4/widget/s;->nv:I

    .line 656
    :goto_0
    sub-int v3, p4, p2

    .line 657
    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    .line 658
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v5

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v5

    .line 659
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v6

    .line 661
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v7

    .line 662
    nop

    .line 663
    nop

    .line 665
    iget-boolean v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-eqz v8, :cond_4

    .line 666
    iget-boolean v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mP:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mW:Z

    if-eqz v8, :cond_3

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    iput v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mR:F

    .line 669
    :cond_4
    move v11, v4

    move v12, v11

    const/4 v4, 0x0

    :goto_4
    const/16 v13, 0x8

    if-ge v4, v7, :cond_b

    .line 670
    invoke-virtual {v0, v4}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 672
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v13, :cond_a

    .line 673
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v4/widget/q;

    .line 678
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 679
    nop

    .line 681
    iget-boolean v2, v13, Landroid/support/v4/widget/q;->nf:Z

    if-eqz v2, :cond_7

    .line 682
    iget v2, v13, Landroid/support/v4/widget/q;->leftMargin:I

    iget v8, v13, Landroid/support/v4/widget/q;->rightMargin:I

    add-int/2addr v2, v8

    .line 683
    sub-int v8, v3, v5

    iget v9, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mO:I

    sub-int v9, v8, v9

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int/2addr v9, v12

    sub-int/2addr v9, v2

    .line 685
    iput v9, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mT:I

    .line 686
    if-eqz v1, :cond_5

    iget v2, v13, Landroid/support/v4/widget/q;->rightMargin:I

    goto :goto_5

    :cond_5
    iget v2, v13, Landroid/support/v4/widget/q;->leftMargin:I

    .line 687
    :goto_5
    add-int v17, v12, v2

    add-int v17, v17, v9

    div-int/lit8 v18, v15, 0x2

    add-int v10, v17, v18

    if-le v10, v8, :cond_6

    const/4 v8, 0x1

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    iput-boolean v8, v13, Landroid/support/v4/widget/q;->ng:Z

    .line 688
    int-to-float v8, v9

    iget v9, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mR:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 689
    add-int/2addr v2, v8

    add-int/2addr v2, v12

    .line 690
    int-to-float v8, v8

    iget v9, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mT:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mR:F

    .line 691
    nop

    .line 700
    const/4 v8, 0x0

    goto :goto_8

    .line 691
    :cond_7
    iget-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mP:Z

    if-eqz v2, :cond_8

    iget v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mU:I

    if-eqz v2, :cond_8

    .line 692
    iget v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mR:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v10, v8, v2

    iget v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mU:I

    int-to-float v2, v2

    mul-float/2addr v10, v2

    float-to-int v8, v10

    goto :goto_7

    .line 693
    :cond_8
    const/4 v8, 0x0

    .line 700
    :goto_7
    move v2, v11

    :goto_8
    if-eqz v1, :cond_9

    .line 701
    sub-int v9, v3, v2

    add-int/2addr v9, v8

    .line 702
    sub-int v8, v9, v15

    goto :goto_9

    .line 704
    :cond_9
    sub-int v8, v2, v8

    .line 705
    add-int v9, v8, v15

    .line 708
    :goto_9
    nop

    .line 709
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v6

    .line 710
    invoke-virtual {v14, v8, v6, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 712
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v11, v8

    .line 669
    move v12, v2

    :cond_a
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x1

    goto/16 :goto_4

    .line 715
    :cond_b
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-eqz v1, :cond_1d

    .line 716
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mP:Z

    if-eqz v1, :cond_12

    .line 717
    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mU:I

    if-eqz v1, :cond_11

    .line 718
    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mR:F

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->bi()Z

    move-result v2

    iget-object v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mQ:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/q;

    iget-boolean v4, v3, Landroid/support/v4/widget/q;->ng:Z

    if-eqz v4, :cond_d

    if-eqz v2, :cond_c

    iget v3, v3, Landroid/support/v4/widget/q;->rightMargin:I

    goto :goto_a

    :cond_c
    iget v3, v3, Landroid/support/v4/widget/q;->leftMargin:I

    :goto_a
    if-gtz v3, :cond_d

    const/4 v3, 0x1

    goto :goto_b

    :cond_d
    const/4 v3, 0x0

    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v4, :cond_11

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mQ:Landroid/view/View;

    if-eq v6, v7, :cond_10

    iget v7, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mS:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v10, v8, v7

    iget v7, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mU:I

    int-to-float v7, v7

    mul-float/2addr v10, v7

    float-to-int v7, v10

    iput v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mS:F

    sub-float v10, v8, v1

    iget v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mU:I

    int-to-float v8, v8

    mul-float/2addr v10, v8

    float-to-int v8, v10

    sub-int/2addr v7, v8

    if-eqz v2, :cond_e

    neg-int v7, v7

    :cond_e
    invoke-virtual {v6, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    if-eqz v3, :cond_10

    if-eqz v2, :cond_f

    iget v7, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mS:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v7, v8

    goto :goto_d

    :cond_f
    const/high16 v8, 0x3f800000    # 1.0f

    iget v7, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mS:F

    sub-float v7, v8, v7

    :goto_d
    iget v9, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mL:I

    invoke-direct {v0, v6, v7, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V

    goto :goto_e

    :cond_10
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 720
    :cond_11
    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mQ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/q;

    iget-boolean v1, v1, Landroid/support/v4/widget/q;->ng:Z

    if-eqz v1, :cond_13

    .line 721
    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mQ:Landroid/view/View;

    iget v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mR:F

    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mK:I

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V

    goto :goto_10

    .line 725
    :cond_12
    const/4 v1, 0x0

    :goto_f
    if-ge v1, v7, :cond_13

    .line 726
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mK:I

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V

    .line 725
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 729
    :cond_13
    :goto_10
    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mQ:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->bi()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_11

    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v3

    :goto_11
    if-eqz v2, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    goto :goto_12

    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/view/View;->isOpaque()Z

    move-result v7

    if-eqz v7, :cond_16

    :goto_13
    const/16 v16, 0x1

    goto :goto_14

    :cond_16
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x12

    if-ge v7, v8, :cond_17

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_17

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_17

    goto :goto_13

    :cond_17
    const/16 v16, 0x0

    :goto_14
    if-eqz v16, :cond_18

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    goto :goto_15

    :cond_18
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_15
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v11

    const/4 v12, 0x0

    :goto_16
    if-ge v12, v11, :cond_1d

    invoke-virtual {v0, v12}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-eq v14, v1, :cond_1d

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v13, :cond_1c

    if-eqz v2, :cond_19

    move v15, v4

    goto :goto_17

    :cond_19
    move v15, v3

    :goto_17
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    if-eqz v2, :cond_1a

    move-object/from16 v19, v1

    move v1, v3

    goto :goto_18

    :cond_1a
    move-object/from16 v19, v1

    move v1, v4

    :goto_18
    move/from16 v20, v2

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lt v13, v8, :cond_1b

    if-lt v15, v9, :cond_1b

    if-gt v1, v7, :cond_1b

    if-gt v2, v10, :cond_1b

    const/4 v1, 0x4

    goto :goto_19

    :cond_1b
    const/4 v1, 0x0

    :goto_19
    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a

    :cond_1c
    move-object/from16 v19, v1

    move/from16 v20, v2

    :goto_1a
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v19

    move/from16 v2, v20

    const/16 v13, 0x8

    goto :goto_16

    .line 732
    :cond_1d
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 733
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    move-object/from16 v0, p0

    .line 438
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 439
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 440
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 441
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 443
    const/16 v5, 0x12c

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v1, v7, :cond_1

    .line 444
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 449
    if-eq v1, v6, :cond_3

    .line 450
    if-nez v1, :cond_3

    .line 452
    nop

    .line 472
    move v2, v5

    goto :goto_0

    .line 456
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_1
    if-nez v3, :cond_3

    .line 459
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 463
    if-nez v3, :cond_3

    .line 464
    nop

    .line 465
    nop

    .line 472
    move v4, v5

    move v3, v6

    goto :goto_0

    .line 468
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Height must not be UNSPECIFIED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_3
    :goto_0
    nop

    .line 473
    nop

    .line 474
    const/4 v1, 0x0

    if-eq v3, v6, :cond_5

    if-eq v3, v7, :cond_4

    .line 483
    move v4, v1

    :goto_1
    move v5, v4

    goto :goto_2

    .line 476
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 477
    goto :goto_1

    .line 479
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 483
    move v5, v4

    move v4, v1

    .line 484
    :goto_2
    nop

    .line 485
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v8

    sub-int v8, v2, v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    .line 486
    nop

    .line 487
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v9

    .line 489
    const/4 v10, 0x2

    if-le v9, v10, :cond_6

    .line 490
    const-string v10, "SlidingPaneLayout"

    const-string v11, "onMeasure: More than two child views are not supported."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_6
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mQ:Landroid/view/View;

    .line 498
    move v11, v1

    move v13, v4

    move v14, v8

    const/4 v12, 0x0

    move v4, v11

    :goto_3
    const/16 v15, 0x8

    const/16 v16, 0x1

    if-ge v4, v9, :cond_11

    .line 499
    invoke-virtual {v0, v4}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 500
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Landroid/support/v4/widget/q;

    .line 502
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v15, :cond_7

    .line 503
    iput-boolean v1, v7, Landroid/support/v4/widget/q;->ng:Z

    .line 504
    goto/16 :goto_7

    .line 507
    :cond_7
    iget v10, v7, Landroid/support/v4/widget/q;->weight:F

    const/4 v15, 0x0

    cmpl-float v10, v10, v15

    if-lez v10, :cond_8

    .line 508
    iget v10, v7, Landroid/support/v4/widget/q;->weight:F

    add-float/2addr v12, v10

    .line 512
    iget v10, v7, Landroid/support/v4/widget/q;->width:I

    if-eqz v10, :cond_10

    .line 516
    :cond_8
    iget v10, v7, Landroid/support/v4/widget/q;->leftMargin:I

    iget v15, v7, Landroid/support/v4/widget/q;->rightMargin:I

    add-int/2addr v10, v15

    .line 517
    iget v15, v7, Landroid/support/v4/widget/q;->width:I

    const/4 v1, -0x2

    if-ne v15, v1, :cond_9

    .line 518
    sub-int v1, v8, v10

    const/high16 v10, -0x80000000

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_4

    .line 520
    :cond_9
    iget v1, v7, Landroid/support/v4/widget/q;->width:I

    const/4 v15, -0x1

    if-ne v1, v15, :cond_a

    .line 521
    sub-int v1, v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_4

    .line 524
    :cond_a
    const/high16 v10, 0x40000000    # 2.0f

    iget v1, v7, Landroid/support/v4/widget/q;->width:I

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 528
    :goto_4
    iget v10, v7, Landroid/support/v4/widget/q;->height:I

    const/4 v15, -0x2

    if-ne v10, v15, :cond_b

    .line 529
    const/high16 v10, -0x80000000

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    goto :goto_5

    .line 530
    :cond_b
    iget v10, v7, Landroid/support/v4/widget/q;->height:I

    const/4 v15, -0x1

    if-ne v10, v15, :cond_c

    .line 531
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    goto :goto_5

    .line 533
    :cond_c
    const/high16 v10, 0x40000000    # 2.0f

    iget v15, v7, Landroid/support/v4/widget/q;->height:I

    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 536
    :goto_5
    invoke-virtual {v6, v1, v15}, Landroid/view/View;->measure(II)V

    .line 537
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 538
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 540
    const/high16 v15, -0x80000000

    if-ne v3, v15, :cond_d

    if-le v10, v13, :cond_d

    .line 541
    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 544
    :cond_d
    sub-int/2addr v14, v1

    .line 545
    if-gez v14, :cond_e

    move/from16 v1, v16

    goto :goto_6

    :cond_e
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, v7, Landroid/support/v4/widget/q;->nf:Z

    or-int/2addr v1, v11

    .line 546
    iget-boolean v7, v7, Landroid/support/v4/widget/q;->nf:Z

    if-eqz v7, :cond_f

    .line 547
    iput-object v6, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mQ:Landroid/view/View;

    .line 498
    :cond_f
    move v11, v1

    :cond_10
    :goto_7
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    goto/16 :goto_3

    .line 552
    :cond_11
    if-nez v11, :cond_12

    const/4 v1, 0x0

    cmpl-float v3, v12, v1

    if-lez v3, :cond_20

    .line 553
    :cond_12
    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mO:I

    sub-int v1, v8, v1

    .line 555
    const/4 v3, 0x0

    :goto_8
    if-ge v3, v9, :cond_20

    .line 556
    invoke-virtual {v0, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 558
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v15, :cond_1f

    .line 559
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v4/widget/q;

    .line 564
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v15, :cond_1f

    .line 565
    iget v7, v6, Landroid/support/v4/widget/q;->width:I

    if-nez v7, :cond_13

    iget v7, v6, Landroid/support/v4/widget/q;->weight:F

    const/4 v10, 0x0

    cmpl-float v7, v7, v10

    if-lez v7, :cond_13

    .line 569
    move/from16 v7, v16

    goto :goto_9

    .line 565
    :cond_13
    nop

    .line 569
    const/4 v7, 0x0

    :goto_9
    if-eqz v7, :cond_14

    .line 570
    const/4 v10, 0x0

    goto :goto_a

    .line 569
    :cond_14
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 570
    :goto_a
    if-eqz v11, :cond_19

    iget-object v15, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mQ:Landroid/view/View;

    if-eq v4, v15, :cond_19

    .line 571
    iget v15, v6, Landroid/support/v4/widget/q;->width:I

    if-gez v15, :cond_1f

    if-gt v10, v1, :cond_15

    iget v10, v6, Landroid/support/v4/widget/q;->weight:F

    const/4 v15, 0x0

    cmpl-float v10, v10, v15

    if-lez v10, :cond_1f

    .line 575
    :cond_15
    if-eqz v7, :cond_18

    .line 578
    iget v7, v6, Landroid/support/v4/widget/q;->height:I

    const/4 v10, -0x2

    if-ne v7, v10, :cond_16

    .line 579
    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 592
    move v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_b

    .line 581
    :cond_16
    iget v7, v6, Landroid/support/v4/widget/q;->height:I

    const/4 v10, -0x1

    if-ne v7, v10, :cond_17

    .line 582
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_b

    .line 585
    :cond_17
    const/high16 v7, 0x40000000    # 2.0f

    iget v6, v6, Landroid/support/v4/widget/q;->height:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_b

    .line 589
    :cond_18
    const/high16 v7, 0x40000000    # 2.0f

    .line 590
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 589
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 592
    :goto_b
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 594
    invoke-virtual {v4, v10, v6}, Landroid/view/View;->measure(II)V

    .line 595
    goto/16 :goto_e

    .line 596
    :cond_19
    iget v7, v6, Landroid/support/v4/widget/q;->weight:F

    const/4 v15, 0x0

    cmpl-float v7, v7, v15

    if-lez v7, :cond_1f

    .line 598
    iget v7, v6, Landroid/support/v4/widget/q;->width:I

    if-nez v7, :cond_1c

    .line 600
    iget v7, v6, Landroid/support/v4/widget/q;->height:I

    const/4 v15, -0x2

    if-ne v7, v15, :cond_1a

    .line 601
    const/high16 v7, -0x80000000

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 615
    move/from16 v15, v17

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_d

    .line 603
    :cond_1a
    const/high16 v7, -0x80000000

    iget v7, v6, Landroid/support/v4/widget/q;->height:I

    const/4 v15, -0x1

    if-ne v7, v15, :cond_1b

    .line 604
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    goto :goto_c

    .line 607
    :cond_1b
    const/high16 v7, 0x40000000    # 2.0f

    iget v15, v6, Landroid/support/v4/widget/q;->height:I

    invoke-static {v15, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    goto :goto_c

    .line 611
    :cond_1c
    const/high16 v7, 0x40000000    # 2.0f

    .line 612
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 611
    invoke-static {v15, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 615
    :goto_c
    move/from16 v15, v17

    :goto_d
    if-eqz v11, :cond_1e

    .line 617
    iget v7, v6, Landroid/support/v4/widget/q;->leftMargin:I

    iget v6, v6, Landroid/support/v4/widget/q;->rightMargin:I

    add-int/2addr v7, v6

    .line 618
    sub-int v6, v8, v7

    .line 619
    move/from16 v19, v1

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 621
    if-eq v10, v6, :cond_1d

    .line 622
    invoke-virtual {v4, v1, v15}, Landroid/view/View;->measure(II)V

    .line 624
    :cond_1d
    goto :goto_f

    .line 626
    :cond_1e
    move/from16 v19, v1

    const/4 v1, 0x0

    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 627
    iget v6, v6, Landroid/support/v4/widget/q;->weight:F

    int-to-float v7, v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v12

    float-to-int v6, v6

    .line 628
    add-int/2addr v10, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v10, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 630
    invoke-virtual {v4, v7, v15}, Landroid/view/View;->measure(II)V

    goto :goto_10

    .line 555
    :cond_1f
    :goto_e
    move/from16 v19, v1

    :goto_f
    const/4 v1, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    :goto_10
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v19

    const/16 v15, 0x8

    goto/16 :goto_8

    .line 636
    :cond_20
    nop

    .line 637
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v13, v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v13, v1

    .line 639
    invoke-virtual {v0, v2, v13}, Landroid/support/v4/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    .line 640
    iput-boolean v11, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mP:Z

    .line 642
    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mV:Landroid/support/v4/widget/s;

    iget v1, v1, Landroid/support/v4/widget/s;->nj:I

    if-eqz v1, :cond_21

    if-nez v11, :cond_21

    .line 644
    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mV:Landroid/support/v4/widget/s;

    invoke-virtual {v0}, Landroid/support/v4/widget/s;->abort()V

    .line 646
    :cond_21
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1308
    instance-of v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    if-nez v0, :cond_0

    .line 1309
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1310
    return-void

    .line 1313
    :cond_0
    check-cast p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    .line 1314
    iget-object v0, p1, Landroid/support/v4/view/AbsSavedState;->jR:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1316
    iget-boolean v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->ni:Z

    if-eqz v0, :cond_2

    .line 1317
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->f(F)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mW:Z

    goto :goto_0

    .line 1319
    :cond_2
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->bh()Z

    .line 1321
    :cond_3
    :goto_0
    iget-boolean p1, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->ni:Z

    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mW:Z

    .line 1322
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1298
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1300
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1301
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mP:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mP:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mR:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mW:Z

    :goto_1
    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->ni:Z

    .line 1303
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 737
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 739
    if-eq p1, p3, :cond_0

    .line 740
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 742
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 814
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mP:Z

    if-nez v0, :cond_0

    .line 815
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 818
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mV:Landroid/support/v4/widget/s;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/s;->d(Landroid/view/MotionEvent;)V

    .line 820
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 832
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mQ:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->L(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 833
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 834
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 835
    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->kO:F

    sub-float v1, v0, v1

    .line 836
    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->kP:F

    sub-float v2, p1, v2

    .line 837
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mV:Landroid/support/v4/widget/s;

    iget v3, v3, Landroid/support/v4/widget/s;->mTouchSlop:I

    .line 838
    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    mul-int/2addr v3, v3

    int-to-float v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mV:Landroid/support/v4/widget/s;

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mQ:Landroid/view/View;

    float-to-int v0, v0

    float-to-int p1, p1

    .line 839
    invoke-virtual {v1, v2, v0, p1}, Landroid/support/v4/widget/s;->d(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 841
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->bh()Z

    goto :goto_0

    .line 824
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 825
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 826
    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->kO:F

    .line 827
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->kP:F

    .line 828
    nop

    .line 842
    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 746
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 747
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInTouchMode()Z

    move-result p2

    if-nez p2, :cond_1

    iget-boolean p2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mP:Z

    if-nez p2, :cond_1

    .line 748
    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mQ:Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mW:Z

    .line 750
    :cond_1
    return-void
.end method
