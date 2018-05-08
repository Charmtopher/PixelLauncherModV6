.class public abstract Lcom/google/android/apps/nexuslauncher/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final CO:Landroid/content/SharedPreferences;

.field public final Gy:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/e/e;->Gy:Landroid/content/SharedPreferences;

    .line 29
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/reflection/i;->l(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/e/e;->CO:Landroid/content/SharedPreferences;

    .line 30
    return-void
.end method


# virtual methods
.method public final B(Z)V
    .locals 5

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e/e;->Gy:Landroid/content/SharedPreferences;

    const-string v1, "pref_show_predictions"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 57
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 58
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/e/e;->CO:Landroid/content/SharedPreferences;

    const-string v3, "reflection_last_predictions"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 59
    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 60
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/e/e;->CO:Landroid/content/SharedPreferences;

    const-string v4, "prediction_order_by_rank"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    .line 61
    :cond_1
    invoke-virtual {p0, v0, v2, v1, p1}, Lcom/google/android/apps/nexuslauncher/e/e;->a(ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 62
    return-void
.end method

.method public abstract a(ZLjava/lang/String;Ljava/lang/String;Z)V
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 44
    const-string p1, "reflection_last_predictions"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "pref_show_predictions"

    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "prediction_order_by_rank"

    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 47
    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/e/e;->B(Z)V

    .line 49
    :cond_1
    return-void
.end method

.method public register()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e/e;->Gy:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 34
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e/e;->CO:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 35
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e/e;->Gy:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 39
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e/e;->CO:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 40
    return-void
.end method
