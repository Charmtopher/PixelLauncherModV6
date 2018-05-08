.class public abstract Landroid/support/v4/app/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/util/List;)Z
    .locals 0

    .line 348
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static a(Ljava/util/List;Landroid/view/View;I)Z
    .locals 3

    .line 336
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 337
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 338
    const/4 p0, 0x1

    return p0

    .line 336
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :cond_1
    return v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected final a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 77
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    aget v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v1, v5

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p2, v2, v4, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 78
    return-void
.end method

.method final a(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 8

    .line 149
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 150
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 152
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 153
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 154
    invoke-static {v3}, Landroid/support/v4/view/n;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    if-eqz v4, :cond_1

    .line 157
    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/support/v4/view/n;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 160
    invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 161
    move v5, v0

    :goto_1
    if-ge v5, v2, :cond_1

    .line 162
    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 163
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v3, v4}, Landroid/support/v4/view/n;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 164
    goto :goto_2

    .line 161
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 152
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_2
    new-instance p5, Landroid/support/v4/app/ad;

    move-object v0, p5

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/ad;-><init>(Landroid/support/v4/app/ac;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {p1, p5}, Landroid/support/v4/app/av;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/av;

    .line 178
    return-void
.end method

.method public abstract a(Landroid/view/ViewGroup;Ljava/lang/Object;)V
.end method

.method public abstract a(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end method

.method public abstract a(Ljava/lang/Object;Landroid/view/View;)V
.end method

.method public abstract a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end method

.method public abstract a(Ljava/lang/Object;Ljava/util/ArrayList;)V
.end method

.method public abstract a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end method

.method final a(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 3

    .line 189
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 190
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 191
    check-cast p2, Landroid/view/ViewGroup;

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v0

    goto :goto_1

    :cond_0
    sget v0, Landroid/support/compat/R$id;->tag_transition_group:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/support/v4/view/n;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    .line 193
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 195
    :cond_4
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 196
    :goto_2
    if-ge v2, v0, :cond_5

    .line 197
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 198
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/app/ac;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 201
    :cond_5
    return-void

    .line 202
    :cond_6
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_7
    return-void
.end method

.method final a(Ljava/util/Map;Landroid/view/View;)V
    .locals 3

    .line 212
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 213
    invoke-static {p2}, Landroid/support/v4/view/n;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_0

    .line 215
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 218
    check-cast p2, Landroid/view/ViewGroup;

    .line 219
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 220
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 221
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 222
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/app/ac;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    :cond_1
    return-void
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method final b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 132
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 133
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 134
    invoke-static {v3}, Landroid/support/v4/view/n;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/support/v4/view/n;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return-object v0
.end method

.method public abstract b(Ljava/lang/Object;Landroid/view/View;)V
.end method

.method public abstract b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
.end method

.method public abstract b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end method

.method public abstract c(Ljava/lang/Object;Landroid/view/View;)V
.end method

.method public abstract d(Ljava/lang/Object;)Z
.end method

.method public abstract e(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract f(Ljava/lang/Object;)Ljava/lang/Object;
.end method
