.class public final Landroid/support/v4/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final lv:Landroid/support/v4/c/q;

.field public final lw:Landroid/support/v4/c/u;

.field private final lx:Ljava/util/ArrayList;

.field private final ly:Ljava/util/HashSet;


# direct methods
.method private a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 4

    .line 174
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    return-void

    .line 178
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Landroid/support/v4/widget/a;->lw:Landroid/support/v4/c/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 185
    if-eqz v0, :cond_1

    .line 186
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 187
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Landroid/support/v4/widget/a;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    return-void

    .line 179
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "This graph contains cyclic dependencies"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final aX()Ljava/util/ArrayList;
    .locals 5

    .line 162
    iget-object v0, p0, Landroid/support/v4/widget/a;->lx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 163
    iget-object v0, p0, Landroid/support/v4/widget/a;->ly:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 166
    iget-object v0, p0, Landroid/support/v4/widget/a;->lw:Landroid/support/v4/c/u;

    invoke-virtual {v0}, Landroid/support/v4/c/u;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 167
    iget-object v2, p0, Landroid/support/v4/widget/a;->lw:Landroid/support/v4/c/u;

    invoke-virtual {v2, v1}, Landroid/support/v4/c/u;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/widget/a;->lx:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/widget/a;->ly:Ljava/util/HashSet;

    invoke-direct {p0, v2, v3, v4}, Landroid/support/v4/widget/a;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/a;->lx:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final r(Ljava/lang/Object;)V
    .locals 2

    .line 54
    iget-object v0, p0, Landroid/support/v4/widget/a;->lw:Landroid/support/v4/c/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/u;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Landroid/support/v4/widget/a;->lw:Landroid/support/v4/c/u;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/c/u;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    return-void
.end method
